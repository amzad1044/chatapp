<?php

namespace App\Http\Controllers;

use App\Message;
use App\User;
use Illuminate\Http\Request;
use App\Events\MessageSent;

class MessageController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    
    public function Users()
    {
        $users = User::latest()->where('id','!=',auth()->user()->id)->get();
        if(\Request::ajax())
        {
            return response()->json($users,200);
        }
        return abort(404);
        
    }
    public function User_message($id=null)
    {
        if(!\Request::ajax())
        {
            return abort(404);
        }
        $user = User::findOrFail($id);

        $message = $this->messageByUser($id);

        return response()->json([
            'message' => $message,
            'user' => $user
        ]);
    }
    public function SendMessage(Request $request)
    {
        if(!\Request::ajax())
        {
            return abort(404);
        }
        $message = Message::create([
            'message' => $request->msg,
            'from'=>auth()->user()->id,
            'to'=> $request->userId,
            'type'=>0
        ]);
        $message = Message::create([
            'message' => $request->msg,
            'from'=>auth()->user()->id,
            'to'=> $request->userId,
            'type'=>1
        ]);
        broadcast(new MessageSent($message));
        return response()->json($message,201);
    }
    public function DeleteMessage($id = null)
    {
        if(!\Request::ajax())
        {
            return abort(404);
        }
        Message::findOrFail($id)->delete();
        return response()->json('deleted',200);
    }
    public function DeleteAllMessage($id = null)
    {
        $msg = $this->messageByUser($id);
        foreach($msg as $val)
        {
            Message::findOrFail($val->id)->delete();
        }
        return response()->json('All deleted',200);
    }
    public function messageByUser($id)
    {
        $message = Message::where(function($query) use($id){
            $query->where('from',auth()->user()->id);
            $query->where('to',$id);
            $query->where('type',0);
        })->orWhere(function($query) use($id){
            $query->where('from',$id);
            $query->where('to',auth()->user()->id);
            $query->where('type',1);
        })->with('user')->get();
        return $message;
    }
}
