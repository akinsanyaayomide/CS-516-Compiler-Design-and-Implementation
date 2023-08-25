
module MenhirBasics = struct
  
  exception Error
  
  let _eRR : exn =
    Error
  
  type token = 
    | WHILE
    | VAR
    | TVOID
    | TSTRING
    | TRUE
    | TINT
    | TILDE
    | TBOOL
    | STRING of (
# 13 "parser.mly"
       (string)
# 22 "parser.ml"
  )
    | STAR
    | SEMI
    | RPAREN
    | RETURN
    | RBRACKET
    | RBRACE
    | PLUS
    | PIPE
    | NULL
    | NEW
    | LTLT
    | LTEQ
    | LT
    | LPAREN
    | LBRACKET
    | LBRACE
    | LBPIPERB
    | LBAMPRB
    | INT of (
# 11 "parser.mly"
       (int64)
# 45 "parser.ml"
  )
    | IF
    | IDENT of (
# 14 "parser.mly"
       (string)
# 51 "parser.ml"
  )
    | GTGTGT
    | GTGT
    | GTEQ
    | GT
    | GLOBAL
    | FOR
    | FALSE
    | EQEQ
    | EQ
    | EOF
    | ELSE
    | DASH
    | COMMA
    | BANGEQ
    | BANG
    | AMP
  
end

include MenhirBasics

type _menhir_env = {
  _menhir_lexer: Lexing.lexbuf -> token;
  _menhir_lexbuf: Lexing.lexbuf;
  _menhir_token: token;
  mutable _menhir_error: bool
}

and _menhir_state = 
  | MenhirState186
  | MenhirState184
  | MenhirState179
  | MenhirState177
  | MenhirState171
  | MenhirState164
  | MenhirState160
  | MenhirState158
  | MenhirState156
  | MenhirState151
  | MenhirState144
  | MenhirState140
  | MenhirState134
  | MenhirState129
  | MenhirState125
  | MenhirState121
  | MenhirState119
  | MenhirState117
  | MenhirState112
  | MenhirState110
  | MenhirState108
  | MenhirState103
  | MenhirState101
  | MenhirState97
  | MenhirState95
  | MenhirState93
  | MenhirState92
  | MenhirState87
  | MenhirState84
  | MenhirState82
  | MenhirState79
  | MenhirState66
  | MenhirState64
  | MenhirState62
  | MenhirState60
  | MenhirState58
  | MenhirState56
  | MenhirState54
  | MenhirState52
  | MenhirState50
  | MenhirState48
  | MenhirState46
  | MenhirState44
  | MenhirState42
  | MenhirState40
  | MenhirState38
  | MenhirState36
  | MenhirState33
  | MenhirState31
  | MenhirState26
  | MenhirState21
  | MenhirState19
  | MenhirState18
  | MenhirState14
  | MenhirState13
  | MenhirState11
  | MenhirState8
  | MenhirState5
  | MenhirState0

# 1 "parser.mly"
  
open Ast

let loc (startpos:Lexing.position) (endpos:Lexing.position) (elt:'a) : 'a node =
  { elt ; loc=Range.mk_lex_range startpos endpos }


# 150 "parser.ml"

let rec _menhir_goto_else_stmt : _menhir_env -> 'ttv_tail -> Lexing.position -> (Ast.block) -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _endpos_b2_ = _endpos in
    let (b2 : (Ast.block)) = _v in
    let (((((_menhir_stack, _menhir_s, _startpos__1_), _startpos__2_), _endpos_e_, _, (e : (Ast.exp Ast.node)), _startpos_e_), _endpos__4_), _endpos_b1_, _, (b1 : (Ast.block))) = _menhir_stack in
    let _endpos = _endpos_b2_ in
    let _v : (Ast.stmt Ast.node) = let _endpos = _endpos_b2_ in
    let _startpos = _startpos__1_ in
    
# 214 "parser.mly"
    ( loc _startpos _endpos @@ If(e,b1,b2) )
# 165 "parser.ml"
     in
    match _menhir_s with
    | MenhirState112 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _endpos_ifs_ = _endpos in
        let (ifs : (Ast.stmt Ast.node)) = _v in
        let _endpos = _endpos_ifs_ in
        let _v : (Ast.block) = 
# 219 "parser.mly"
                      ( [ ifs ] )
# 177 "parser.ml"
         in
        _menhir_goto_else_stmt _menhir_env _menhir_stack _endpos _v
    | MenhirState186 | MenhirState93 | MenhirState144 | MenhirState121 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _endpos_ifs_ = _endpos in
        let (ifs : (Ast.stmt Ast.node)) = _v in
        let _v : (Ast.stmt Ast.node) = 
# 201 "parser.mly"
                        ( ifs )
# 188 "parser.ml"
         in
        _menhir_goto_stmt _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_reduce11 : _menhir_env -> ((('ttv_tail * Lexing.position * _menhir_state * (Ast.exp Ast.node) * Lexing.position) * Lexing.position) * _menhir_state * (Ast.exp Ast.node list)) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let ((((_menhir_stack, _endpos_e_, _menhir_s, (e : (Ast.exp Ast.node)), _startpos_e_), _startpos__2_), _, (xs : (Ast.exp Ast.node list))), _endpos__4_) = _menhir_stack in
    let _startpos = _startpos_e_ in
    let _endpos = _endpos__4_ in
    let _v : (Ast.exp Ast.node) = let es = 
# 232 "<standard.mly>"
    ( xs )
# 202 "parser.ml"
     in
    let _endpos = _endpos__4_ in
    let _startpos = _startpos_e_ in
    
# 173 "parser.mly"
                        ( loc _startpos _endpos @@ Call (e,es) )
# 209 "parser.ml"
     in
    _menhir_goto_exp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_goto_decl : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.decl) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | GLOBAL ->
        _menhir_run149 _menhir_env (Obj.magic _menhir_stack) MenhirState184 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TBOOL ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState184 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TINT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState184 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TSTRING ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState184 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TVOID ->
        _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState184 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | EOF ->
        _menhir_reduce54 _menhir_env (Obj.magic _menhir_stack) MenhirState184
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState184

and _menhir_goto_separated_nonempty_list_COMMA_gexp_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.exp Ast.node list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState160 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (x : (Ast.exp Ast.node list)) = _v in
        let _v : (Ast.exp Ast.node list) = 
# 144 "<standard.mly>"
    ( x )
# 247 "parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_gexp__ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState171 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (xs : (Ast.exp Ast.node list)) = _v in
        let (_menhir_stack, _menhir_s, (x : (Ast.exp Ast.node))) = _menhir_stack in
        let _v : (Ast.exp Ast.node list) = 
# 243 "<standard.mly>"
    ( x :: xs )
# 258 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_gexp_ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_goto_list_stmt_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.block) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState144 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (x : (Ast.stmt Ast.node))), _, (xs : (Ast.block))) = _menhir_stack in
        let _v : (Ast.block) = 
# 213 "<standard.mly>"
    ( x :: xs )
# 275 "parser.ml"
         in
        _menhir_goto_list_stmt_ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState93 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | RBRACE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _endpos__3_ = _endpos in
            let ((_menhir_stack, _menhir_s), _, (stmts : (Ast.block))) = _menhir_stack in
            let _endpos = _endpos__3_ in
            let _v : (Ast.block) = 
# 210 "parser.mly"
                                   ( stmts )
# 294 "parser.ml"
             in
            let _menhir_stack = (_menhir_stack, _endpos, _menhir_s, _v) in
            (match _menhir_s with
            | MenhirState97 ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_stack = Obj.magic _menhir_stack in
                let (((((_menhir_stack, _menhir_s, _startpos__1_), _startpos__2_), _endpos_e_, _, (e : (Ast.exp Ast.node)), _startpos_e_), _endpos__4_), _endpos_b_, _, (b : (Ast.block))) = _menhir_stack in
                let _v : (Ast.stmt Ast.node) = let _endpos = _endpos_b_ in
                let _startpos = _startpos__1_ in
                
# 207 "parser.mly"
                        ( loc _startpos _endpos @@ While(e, b) )
# 307 "parser.ml"
                 in
                _menhir_goto_stmt _menhir_env _menhir_stack _menhir_s _v
            | MenhirState110 ->
                let _menhir_stack = Obj.magic _menhir_stack in
                assert (not _menhir_env._menhir_error);
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | ELSE ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    (match _tok with
                    | IF ->
                        _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | LBRACE ->
                        _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState112
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState112)
                | BANG | DASH | EOF | FALSE | FOR | IDENT _ | IF | INT _ | LPAREN | NEW | RBRACE | RETURN | RPAREN | STRING _ | TBOOL | TILDE | TINT | TRUE | TSTRING | VAR | WHILE ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let (_, _endpos) = Obj.magic _menhir_stack in
                    let _v : (Ast.block) = 
# 217 "parser.mly"
                      ( [] )
# 334 "parser.ml"
                     in
                    _menhir_goto_else_stmt _menhir_env _menhir_stack _endpos _v
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let (_menhir_stack, _, _menhir_s, _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
            | MenhirState112 ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _endpos_b_, _, (b : (Ast.block))) = _menhir_stack in
                let _endpos = _endpos_b_ in
                let _v : (Ast.block) = 
# 218 "parser.mly"
                      ( b )
# 351 "parser.ml"
                 in
                _menhir_goto_else_stmt _menhir_env _menhir_stack _endpos _v
            | MenhirState125 ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_stack = Obj.magic _menhir_stack in
                let (((((((((_menhir_stack, _menhir_s, _startpos__1_), _startpos__2_), _, (v : (Ast.vdecl list))), _endpos__4_), _, (e : (Ast.exp Ast.node option))), _endpos__6_), _, (s : (Ast.stmt Ast.node option))), _endpos__8_), _endpos_b_, _, (b : (Ast.block))) = _menhir_stack in
                let _v : (Ast.stmt Ast.node) = let _endpos = _endpos_b_ in
                let _startpos = _startpos__1_ in
                
# 205 "parser.mly"
                    ( loc _startpos _endpos @@ For(v, e, s, b) )
# 363 "parser.ml"
                 in
                _menhir_goto_stmt _menhir_env _menhir_stack _menhir_s _v
            | MenhirState92 ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((((((_menhir_stack, _menhir_s, _startpos__1_), _endpos_fname_, (fname : (
# 14 "parser.mly"
       (string)
# 372 "parser.ml"
                )), _startpos_fname_), _startpos__3_), _, (args : ((Ast.ty * Ast.id) list))), _endpos__5_), _endpos_body_, _, (body : (Ast.block))) = _menhir_stack in
                let _v : (Ast.decl) = let frtyp = 
# 119 "parser.mly"
           ( RetVoid )
# 377 "parser.ml"
                 in
                let _startpos_frtyp_ = _startpos__1_ in
                let _endpos = _endpos_body_ in
                let _startpos = _startpos_frtyp_ in
                
# 105 "parser.mly"
    ( Gfdecl (loc _startpos _endpos { frtyp; fname; args; body }) )
# 385 "parser.ml"
                 in
                _menhir_goto_decl _menhir_env _menhir_stack _menhir_s _v
            | MenhirState179 ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((((((_menhir_stack, _menhir_s, (t : (Ast.ty)), _startpos_t_), _endpos_fname_, (fname : (
# 14 "parser.mly"
       (string)
# 394 "parser.ml"
                )), _startpos_fname_), _startpos__3_), _, (args : ((Ast.ty * Ast.id) list))), _endpos__5_), _endpos_body_, _, (body : (Ast.block))) = _menhir_stack in
                let _v : (Ast.decl) = let frtyp = 
# 120 "parser.mly"
           ( RetVal t )
# 399 "parser.ml"
                 in
                let _startpos_frtyp_ = _startpos_t_ in
                let _endpos = _endpos_body_ in
                let _startpos = _startpos_frtyp_ in
                
# 105 "parser.mly"
    ( Gfdecl (loc _startpos _endpos { frtyp; fname; args; body }) )
# 407 "parser.ml"
                 in
                _menhir_goto_decl _menhir_env _menhir_stack _menhir_s _v
            | _ ->
                _menhir_fail ())
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_goto_loption_separated_nonempty_list_COMMA_exp__ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.exp Ast.node list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState26 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            let _menhir_stack = (_menhir_stack, _endpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            _menhir_reduce11 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState13 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | RBRACE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _endpos__7_ = _endpos in
            let ((((_menhir_stack, _menhir_s, _startpos__1_), _, (t : (Ast.ty)), _startpos_t_), _endpos__4_, _), _, (xs : (Ast.exp Ast.node list))) = _menhir_stack in
            let _startpos = _startpos__1_ in
            let _endpos = _endpos__7_ in
            let _v : (Ast.exp Ast.node) = let es = 
# 232 "<standard.mly>"
    ( xs )
# 459 "parser.ml"
             in
            let _endpos = _endpos__7_ in
            let _startpos = _startpos__1_ in
            
# 175 "parser.mly"
                        ( loc _startpos _endpos @@ CArr (t ,es) )
# 466 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState134 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            let _menhir_stack = (_menhir_stack, _endpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | SEMI ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
                let _menhir_env = _menhir_discard _menhir_env in
                let _menhir_stack = Obj.magic _menhir_stack in
                let _endpos__5_ = _endpos in
                let ((((_menhir_stack, _endpos_e_, _menhir_s, (e : (Ast.exp Ast.node)), _startpos_e_), _startpos__2_), _, (xs : (Ast.exp Ast.node list))), _endpos__4_) = _menhir_stack in
                let _v : (Ast.stmt Ast.node) = let es = 
# 232 "<standard.mly>"
    ( xs )
# 497 "parser.ml"
                 in
                let _endpos = _endpos__5_ in
                let _startpos = _startpos_e_ in
                
# 200 "parser.mly"
                        ( loc _startpos _endpos @@ SCall (e, es) )
# 504 "parser.ml"
                 in
                _menhir_goto_stmt _menhir_env _menhir_stack _menhir_s _v
            | AMP | BANGEQ | DASH | EQEQ | GT | GTEQ | GTGT | GTGTGT | LBAMPRB | LBPIPERB | LBRACKET | LPAREN | LT | LTEQ | LTLT | PIPE | PLUS | STAR ->
                _menhir_reduce11 _menhir_env (Obj.magic _menhir_stack)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_goto_loption_separated_nonempty_list_COMMA_pair_ty_IDENT___ : _menhir_env -> 'ttv_tail -> _menhir_state -> ((Ast.ty * Ast.id) list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (xs : ((Ast.ty * Ast.id) list)) = _v in
    let _v : ((Ast.ty * Ast.id) list) = let l = 
# 232 "<standard.mly>"
    ( xs )
# 532 "parser.ml"
     in
    
# 108 "parser.mly"
                                            ( l )
# 537 "parser.ml"
     in
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState82 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            let _menhir_stack = (_menhir_stack, _endpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | LBRACE ->
                _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState92)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState177 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            let _menhir_stack = (_menhir_stack, _endpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | LBRACE ->
                _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState179
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState179)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_goto_gexp : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.exp Ast.node) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState171 | MenhirState160 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | COMMA ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | FALSE ->
                _menhir_run162 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState171 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | INT _v ->
                _menhir_run161 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState171 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | NEW ->
                _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState171 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | STRING _v ->
                _menhir_run155 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState171 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TBOOL ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState171 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TINT ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState171 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TRUE ->
                _menhir_run154 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState171 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TSTRING ->
                _menhir_run152 _menhir_env (Obj.magic _menhir_stack) MenhirState171 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState171)
        | RBRACE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (x : (Ast.exp Ast.node))) = _menhir_stack in
            let _v : (Ast.exp Ast.node list) = 
# 241 "<standard.mly>"
    ( [ x ] )
# 632 "parser.ml"
             in
            _menhir_goto_separated_nonempty_list_COMMA_gexp_ _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState151 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _endpos__5_ = _endpos in
            let (((_menhir_stack, _menhir_s, _startpos__1_), _endpos_name_, (name : (
# 14 "parser.mly"
       (string)
# 655 "parser.ml"
            )), _startpos_name_), _, (init : (Ast.exp Ast.node))) = _menhir_stack in
            let _v : (Ast.decl) = let _endpos = _endpos__5_ in
            let _startpos = _startpos__1_ in
            
# 103 "parser.mly"
    ( Gvdecl (loc _startpos _endpos { name; init }) )
# 662 "parser.ml"
             in
            _menhir_goto_decl _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_goto_loption_separated_nonempty_list_COMMA_gexp__ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.exp Ast.node list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RBRACE ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _endpos__7_ = _endpos in
        let ((((_menhir_stack, _menhir_s, _startpos__1_), _, (t : (Ast.ty)), _startpos_t_), _endpos__4_, _), _, (xs : (Ast.exp Ast.node list))) = _menhir_stack in
        let _v : (Ast.exp Ast.node) = let l = 
# 232 "<standard.mly>"
    ( xs )
# 691 "parser.ml"
         in
        let _endpos = _endpos__7_ in
        let _startpos = _startpos__1_ in
        
# 156 "parser.mly"
              ( loc _startpos _endpos @@ CArr (t, l) )
# 698 "parser.ml"
         in
        _menhir_goto_gexp _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run84 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.ty) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RBRACKET ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let _menhir_s = MenhirState84 in
        let _menhir_stack = (_menhir_stack, _endpos, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce88 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState84

and _menhir_goto_separated_nonempty_list_COMMA_pair_ty_IDENT__ : _menhir_env -> 'ttv_tail -> _menhir_state -> ((Ast.ty * Ast.id) list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState87 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (xs : ((Ast.ty * Ast.id) list)) = _v in
        let ((_menhir_stack, _menhir_s, (x : (Ast.ty)), _startpos_x_), _endpos_y_, (y : (
# 14 "parser.mly"
       (string)
# 735 "parser.ml"
        )), _startpos_y_) = _menhir_stack in
        let _v : ((Ast.ty * Ast.id) list) = let x = 
# 167 "<standard.mly>"
    ( (x, y) )
# 740 "parser.ml"
         in
        
# 243 "<standard.mly>"
    ( x :: xs )
# 745 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_pair_ty_IDENT__ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState177 | MenhirState82 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (x : ((Ast.ty * Ast.id) list)) = _v in
        let _v : ((Ast.ty * Ast.id) list) = 
# 144 "<standard.mly>"
    ( x )
# 755 "parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_pair_ty_IDENT___ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_reduce88 : _menhir_env -> (('ttv_tail * _menhir_state * (Ast.ty) * Lexing.position)) * Lexing.position * _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let ((_menhir_stack, _menhir_s, (t : (Ast.ty)), _startpos_t_), _endpos__3_, _) = _menhir_stack in
    let _startpos = _startpos_t_ in
    let _v : (Ast.ty) = let r = 
# 124 "parser.mly"
                           ( RArray t )
# 768 "parser.ml"
     in
    
# 112 "parser.mly"
           ( TRef r )
# 773 "parser.ml"
     in
    _menhir_goto_ty _menhir_env _menhir_stack _menhir_s _v _startpos

and _menhir_reduce56 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (Ast.block) = 
# 211 "<standard.mly>"
    ( [] )
# 782 "parser.ml"
     in
    _menhir_goto_list_stmt_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_stmt_opt : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.stmt Ast.node option) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RPAREN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let _menhir_stack = (_menhir_stack, _endpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACE ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState125
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState125)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_reduce33 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (Ast.exp Ast.node) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _endpos_l_, _menhir_s, (l : (Ast.exp Ast.node)), _startpos_l_) = _menhir_stack in
    let _startpos = _startpos_l_ in
    let _endpos = _endpos_l_ in
    let _v : (Ast.exp Ast.node) = 
# 181 "parser.mly"
                        ( l )
# 821 "parser.ml"
     in
    _menhir_goto_exp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_goto_exp_opt : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.exp Ast.node option) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | SEMI ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let _menhir_stack = (_menhir_stack, _endpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BANG ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState121 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | DASH ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState121 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | FALSE ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState121 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | FOR ->
            _menhir_run116 _menhir_env (Obj.magic _menhir_stack) MenhirState121 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | IDENT _v ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState121 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | IF ->
            _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState121 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | INT _v ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState121 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LPAREN ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState121 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | NEW ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState121 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | RETURN ->
            _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState121 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | STRING _v ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState121 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | TBOOL ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState121 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | TILDE ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState121 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | TINT ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState121 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | TRUE ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState121 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | TSTRING ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState121 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | VAR ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState121 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | WHILE ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState121 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState121 in
            let _v : (Ast.stmt Ast.node option) = 
# 169 "parser.mly"
                ( None )
# 881 "parser.ml"
             in
            _menhir_goto_stmt_opt _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState121)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_reduce58 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (Ast.exp Ast.node list) = 
# 142 "<standard.mly>"
    ( [] )
# 900 "parser.ml"
     in
    _menhir_goto_loption_separated_nonempty_list_COMMA_exp__ _menhir_env _menhir_stack _menhir_s _v

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.eprintf "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_goto_separated_nonempty_list_COMMA_vdecl_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.vdecl list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState140 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (xs : (Ast.vdecl list)) = _v in
        let (_menhir_stack, _menhir_s, (x : (Ast.vdecl)), _startpos_x_) = _menhir_stack in
        let _v : (Ast.vdecl list) = 
# 243 "<standard.mly>"
    ( x :: xs )
# 920 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_vdecl_ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState117 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (x : (Ast.vdecl list)) = _v in
        let _v : (Ast.vdecl list) = 
# 144 "<standard.mly>"
    ( x )
# 930 "parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_vdecl__ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_run93 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BANG ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | DASH ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState93 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FOR ->
        _menhir_run116 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState93 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IF ->
        _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INT _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState93 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NEW ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | RETURN ->
        _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState93 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TBOOL ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TILDE ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TINT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState93 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TSTRING ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | VAR ->
        _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | WHILE ->
        _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | RBRACE ->
        _menhir_reduce56 _menhir_env (Obj.magic _menhir_stack) MenhirState93
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState93

and _menhir_goto_separated_nonempty_list_COMMA_exp_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.exp Ast.node list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState134 | MenhirState13 | MenhirState26 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (x : (Ast.exp Ast.node list)) = _v in
        let _v : (Ast.exp Ast.node list) = 
# 144 "<standard.mly>"
    ( x )
# 995 "parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_exp__ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState66 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (xs : (Ast.exp Ast.node list)) = _v in
        let (_menhir_stack, _endpos_x_, _menhir_s, (x : (Ast.exp Ast.node)), _startpos_x_) = _menhir_stack in
        let _v : (Ast.exp Ast.node list) = 
# 243 "<standard.mly>"
    ( x :: xs )
# 1006 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_exp_ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_run31 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (Ast.exp Ast.node) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BANG ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | DASH ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState31 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState31 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INT _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState31 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NEW ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState31 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TBOOL ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TILDE ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TINT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState31 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TSTRING ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState31

and _menhir_run36 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (Ast.exp Ast.node) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BANG ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | DASH ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState36 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState36 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INT _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState36 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NEW ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState36 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TBOOL ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TILDE ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TINT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState36 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TSTRING ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState36

and _menhir_run38 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (Ast.exp Ast.node) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BANG ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | DASH ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState38 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState38 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INT _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState38 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NEW ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState38 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TBOOL ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TILDE ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TINT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState38 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TSTRING ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState38

and _menhir_run40 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (Ast.exp Ast.node) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BANG ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | DASH ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState40 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState40 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INT _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState40 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NEW ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState40 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TBOOL ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TILDE ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TINT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState40 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TSTRING ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState40

and _menhir_run44 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (Ast.exp Ast.node) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BANG ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | DASH ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState44 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState44 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INT _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState44 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NEW ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState44 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TBOOL ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TILDE ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TINT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState44 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TSTRING ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState44

and _menhir_run50 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (Ast.exp Ast.node) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BANG ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | DASH ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState50 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState50 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INT _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState50 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NEW ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState50 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TBOOL ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TILDE ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TINT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState50 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TSTRING ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState50

and _menhir_run62 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (Ast.exp Ast.node) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BANG ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | DASH ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState62 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState62 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INT _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState62 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NEW ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState62 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TBOOL ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TILDE ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TINT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState62 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TSTRING ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState62

and _menhir_run64 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (Ast.exp Ast.node) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BANG ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | DASH ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState64 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState64 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INT _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState64 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NEW ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState64 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TBOOL ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TILDE ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TINT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState64 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TSTRING ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState64

and _menhir_run46 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (Ast.exp Ast.node) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BANG ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | DASH ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState46 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState46 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INT _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState46 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NEW ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState46 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TBOOL ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TILDE ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TINT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState46 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TSTRING ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState46

and _menhir_run48 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (Ast.exp Ast.node) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BANG ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | DASH ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState48 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState48 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INT _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState48 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NEW ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState48 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TBOOL ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TILDE ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TINT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState48 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TSTRING ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState48

and _menhir_run52 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (Ast.exp Ast.node) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BANG ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | DASH ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState52 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState52 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INT _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState52 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NEW ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState52 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TBOOL ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TILDE ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TINT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState52 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TSTRING ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState52

and _menhir_run54 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (Ast.exp Ast.node) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BANG ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | DASH ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState54 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState54 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INT _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState54 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NEW ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState54 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TBOOL ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TILDE ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TINT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState54 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TSTRING ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState54

and _menhir_run56 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (Ast.exp Ast.node) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BANG ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | DASH ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState56 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState56 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INT _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState56 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NEW ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState56 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TBOOL ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TILDE ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TINT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState56 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TSTRING ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState56

and _menhir_run42 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (Ast.exp Ast.node) * Lexing.position -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _startpos ->
    let _menhir_stack = (_menhir_stack, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BANG ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | DASH ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState42 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState42 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INT _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState42 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NEW ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState42 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TBOOL ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TILDE ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TINT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState42 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TSTRING ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState42

and _menhir_run58 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (Ast.exp Ast.node) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BANG ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | DASH ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState58 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState58 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INT _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState58 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NEW ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState58 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TBOOL ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TILDE ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TINT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState58 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TSTRING ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState58

and _menhir_run60 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (Ast.exp Ast.node) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BANG ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | DASH ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState60 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState60 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INT _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState60 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NEW ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState60 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TBOOL ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TILDE ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TINT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState60 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TSTRING ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState60

and _menhir_run26 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (Ast.exp Ast.node) * Lexing.position -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _startpos ->
    let _menhir_stack = (_menhir_stack, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BANG ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | DASH ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState26 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState26 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INT _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState26 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NEW ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState26 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TBOOL ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TILDE ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TINT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState26 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TSTRING ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | RPAREN ->
        _menhir_reduce58 _menhir_env (Obj.magic _menhir_stack) MenhirState26
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState26

and _menhir_run33 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (Ast.exp Ast.node) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BANG ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | DASH ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState33 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState33 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INT _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState33 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NEW ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState33 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TBOOL ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TILDE ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TINT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState33 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TSTRING ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState33

and _menhir_goto_list_decl_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.prog) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState79 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | EOF ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (p : (Ast.prog))) = _menhir_stack in
            let _v : (Ast.prog) = 
# 99 "parser.mly"
                      ( p )
# 1680 "parser.ml"
             in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_1 : (Ast.prog)) = _v in
            Obj.magic _1
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState184 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (x : (Ast.decl))), _, (xs : (Ast.prog))) = _menhir_stack in
        let _v : (Ast.prog) = 
# 213 "<standard.mly>"
    ( x :: xs )
# 1699 "parser.ml"
         in
        _menhir_goto_list_decl_ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_reduce62 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : ((Ast.ty * Ast.id) list) = 
# 142 "<standard.mly>"
    ( [] )
# 1710 "parser.ml"
     in
    _menhir_goto_loption_separated_nonempty_list_COMMA_pair_ty_IDENT___ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run152 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | NULL ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _endpos__2_ = _endpos in
        let (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
        let _v : (Ast.exp Ast.node) = let t = 
# 123 "parser.mly"
            ( RString )
# 1730 "parser.ml"
         in
        let _startpos_t_ = _startpos__1_ in
        let _endpos = _endpos__2_ in
        let _startpos = _startpos_t_ in
        
# 151 "parser.mly"
                 ( loc _startpos _endpos @@ CNull t )
# 1738 "parser.ml"
         in
        _menhir_goto_gexp _menhir_env _menhir_stack _menhir_s _v
    | LBRACKET ->
        _menhir_reduce87 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run154 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _endpos_t_ = _endpos in
    let _startpos_t_ = _startpos in
    let t = () in
    let _v : (Ast.exp Ast.node) = let _endpos = _endpos_t_ in
    let _startpos = _startpos_t_ in
    
# 153 "parser.mly"
               ( loc _startpos _endpos @@ CBool true )
# 1762 "parser.ml"
     in
    _menhir_goto_gexp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run155 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (
# 13 "parser.mly"
       (string)
# 1769 "parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _endpos_s_ = _endpos in
    let (s : (
# 13 "parser.mly"
       (string)
# 1778 "parser.ml"
    )) = _v in
    let _startpos_s_ = _startpos in
    let _v : (Ast.exp Ast.node) = let _endpos = _endpos_s_ in
    let _startpos = _startpos_s_ in
    
# 157 "parser.mly"
               ( loc _startpos _endpos @@ CStr s )
# 1786 "parser.ml"
     in
    _menhir_goto_gexp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run156 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | TBOOL ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState156 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TINT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState156 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TSTRING ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState156 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState156

and _menhir_run161 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (
# 11 "parser.mly"
       (int64)
# 1810 "parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _endpos_i_ = _endpos in
    let (i : (
# 11 "parser.mly"
       (int64)
# 1819 "parser.ml"
    )) = _v in
    let _startpos_i_ = _startpos in
    let _v : (Ast.exp Ast.node) = let _endpos = _endpos_i_ in
    let _startpos = _startpos_i_ in
    
# 152 "parser.mly"
               ( loc _startpos _endpos @@ CInt i )
# 1827 "parser.ml"
     in
    _menhir_goto_gexp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run162 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _endpos_f_ = _endpos in
    let _startpos_f_ = _startpos in
    let f = () in
    let _v : (Ast.exp Ast.node) = let _endpos = _endpos_f_ in
    let _startpos = _startpos_f_ in
    
# 154 "parser.mly"
                ( loc _startpos _endpos @@ CBool false )
# 1843 "parser.ml"
     in
    _menhir_goto_gexp _menhir_env _menhir_stack _menhir_s _v

and _menhir_reduce87 : _menhir_env -> 'ttv_tail * _menhir_state * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _v : (Ast.ty) = let r = 
# 123 "parser.mly"
            ( RString )
# 1854 "parser.ml"
     in
    
# 112 "parser.mly"
           ( TRef r )
# 1859 "parser.ml"
     in
    _menhir_goto_ty _menhir_env _menhir_stack _menhir_s _v _startpos

and _menhir_goto_ty : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.ty) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v, _startpos) in
    match _menhir_s with
    | MenhirState8 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACKET ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | BANG ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | DASH ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | FALSE ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState11 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | IDENT _v ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState11 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | INT _v ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState11 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LPAREN ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | NEW ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | RBRACKET ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
                let _menhir_s = MenhirState11 in
                let _menhir_stack = (_menhir_stack, _endpos, _menhir_s) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | LBRACE ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    (match _tok with
                    | BANG ->
                        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | DASH ->
                        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | FALSE ->
                        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState13 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | IDENT _v ->
                        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState13 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | INT _v ->
                        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState13 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | LPAREN ->
                        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | NEW ->
                        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | STRING _v ->
                        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState13 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | TBOOL ->
                        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | TILDE ->
                        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | TINT ->
                        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | TRUE ->
                        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState13 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | TSTRING ->
                        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | RBRACE ->
                        _menhir_reduce58 _menhir_env (Obj.magic _menhir_stack) MenhirState13
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState13)
                | LBRACKET ->
                    _menhir_reduce88 _menhir_env (Obj.magic _menhir_stack)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let (_menhir_stack, _, _menhir_s) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
            | STRING _v ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState11 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TBOOL ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TILDE ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TINT ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TRUE ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState11 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TSTRING ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState11)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState186 | MenhirState144 | MenhirState93 | MenhirState134 | MenhirState129 | MenhirState121 | MenhirState119 | MenhirState108 | MenhirState103 | MenhirState101 | MenhirState95 | MenhirState0 | MenhirState5 | MenhirState11 | MenhirState13 | MenhirState14 | MenhirState18 | MenhirState66 | MenhirState64 | MenhirState62 | MenhirState60 | MenhirState58 | MenhirState56 | MenhirState54 | MenhirState52 | MenhirState50 | MenhirState48 | MenhirState46 | MenhirState44 | MenhirState42 | MenhirState40 | MenhirState38 | MenhirState36 | MenhirState33 | MenhirState31 | MenhirState26 | MenhirState19 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACKET ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | RBRACKET ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
                let _menhir_s = MenhirState21 in
                let _menhir_stack = (_menhir_stack, _endpos, _menhir_s) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | NULL ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _endpos__2_ = _endpos in
                    let ((_menhir_stack, _menhir_s, (t : (Ast.ty)), _startpos_t_), _endpos__3_, _) = _menhir_stack in
                    let _startpos = _startpos_t_ in
                    let _endpos = _endpos__2_ in
                    let _v : (Ast.exp Ast.node) = let t = 
# 124 "parser.mly"
                           ( RArray t )
# 1996 "parser.ml"
                     in
                    let _endpos = _endpos__2_ in
                    let _startpos = _startpos_t_ in
                    
# 186 "parser.mly"
                 ( loc _startpos _endpos @@ CNull t )
# 2003 "parser.ml"
                     in
                    _menhir_goto_exp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
                | LBRACKET ->
                    _menhir_reduce88 _menhir_env (Obj.magic _menhir_stack)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let (_menhir_stack, _, _menhir_s) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState21)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState177 | MenhirState87 | MenhirState82 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | IDENT _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            let _startpos = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
            let _menhir_stack = (_menhir_stack, _endpos, _v, _startpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | COMMA ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | TBOOL ->
                    _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState87 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | TINT ->
                    _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState87 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | TSTRING ->
                    _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState87 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState87)
            | RPAREN ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((_menhir_stack, _menhir_s, (x : (Ast.ty)), _startpos_x_), _endpos_y_, (y : (
# 14 "parser.mly"
       (string)
# 2057 "parser.ml"
                )), _startpos_y_) = _menhir_stack in
                let _v : ((Ast.ty * Ast.id) list) = let x = 
# 167 "<standard.mly>"
    ( (x, y) )
# 2062 "parser.ml"
                 in
                
# 241 "<standard.mly>"
    ( [ x ] )
# 2067 "parser.ml"
                 in
                _menhir_goto_separated_nonempty_list_COMMA_pair_ty_IDENT__ _menhir_env _menhir_stack _menhir_s _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((_menhir_stack, _menhir_s, _, _), _, _, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | LBRACKET ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState156 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACKET ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | RBRACKET ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
                let _menhir_s = MenhirState158 in
                let _menhir_stack = (_menhir_stack, _endpos, _menhir_s) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | LBRACE ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    (match _tok with
                    | FALSE ->
                        _menhir_run162 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState160 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | INT _v ->
                        _menhir_run161 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState160 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | NEW ->
                        _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState160 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | STRING _v ->
                        _menhir_run155 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState160 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | TBOOL ->
                        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState160 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | TINT ->
                        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState160 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | TRUE ->
                        _menhir_run154 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState160 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | TSTRING ->
                        _menhir_run152 _menhir_env (Obj.magic _menhir_stack) MenhirState160 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | RBRACE ->
                        let _menhir_stack = Obj.magic _menhir_stack in
                        let _menhir_s = MenhirState160 in
                        let _v : (Ast.exp Ast.node list) = 
# 142 "<standard.mly>"
    ( [] )
# 2129 "parser.ml"
                         in
                        _menhir_goto_loption_separated_nonempty_list_COMMA_gexp__ _menhir_env _menhir_stack _menhir_s _v
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState160)
                | LBRACKET ->
                    _menhir_reduce88 _menhir_env (Obj.magic _menhir_stack)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let (_menhir_stack, _, _menhir_s) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState158)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState151 | MenhirState171 | MenhirState160 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACKET ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | RBRACKET ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
                let _menhir_s = MenhirState164 in
                let _menhir_stack = (_menhir_stack, _endpos, _menhir_s) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | NULL ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _endpos__2_ = _endpos in
                    let ((_menhir_stack, _menhir_s, (t : (Ast.ty)), _startpos_t_), _endpos__3_, _) = _menhir_stack in
                    let _v : (Ast.exp Ast.node) = let t = 
# 124 "parser.mly"
                           ( RArray t )
# 2182 "parser.ml"
                     in
                    let _endpos = _endpos__2_ in
                    let _startpos = _startpos_t_ in
                    
# 151 "parser.mly"
                 ( loc _startpos _endpos @@ CNull t )
# 2189 "parser.ml"
                     in
                    _menhir_goto_gexp _menhir_env _menhir_stack _menhir_s _v
                | LBRACKET ->
                    _menhir_reduce88 _menhir_env (Obj.magic _menhir_stack)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let (_menhir_stack, _, _menhir_s) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState164)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState184 | MenhirState79 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | IDENT _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            let _startpos = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
            let _menhir_stack = (_menhir_stack, _endpos, _v, _startpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | LPAREN ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _startpos = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
                let _menhir_stack = (_menhir_stack, _startpos) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | TBOOL ->
                    _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState177 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | TINT ->
                    _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState177 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | TSTRING ->
                    _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState177 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | RPAREN ->
                    _menhir_reduce62 _menhir_env (Obj.magic _menhir_stack) MenhirState177
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState177)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((_menhir_stack, _menhir_s, _, _), _, _, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | LBRACKET ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_goto_stmt : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.stmt Ast.node) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState121 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (s : (Ast.stmt Ast.node))) = _menhir_stack in
        let _v : (Ast.stmt Ast.node option) = 
# 170 "parser.mly"
           ( Some s )
# 2270 "parser.ml"
         in
        _menhir_goto_stmt_opt _menhir_env _menhir_stack _menhir_s _v
    | MenhirState144 | MenhirState93 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BANG ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState144 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | DASH ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState144 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | FALSE ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState144 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | FOR ->
            _menhir_run116 _menhir_env (Obj.magic _menhir_stack) MenhirState144 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | IDENT _v ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState144 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | IF ->
            _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState144 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | INT _v ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState144 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LPAREN ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState144 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | NEW ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState144 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | RETURN ->
            _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState144 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | STRING _v ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState144 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | TBOOL ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState144 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | TILDE ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState144 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | TINT ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState144 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | TRUE ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState144 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | TSTRING ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState144 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | VAR ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState144 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | WHILE ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState144 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | RBRACE ->
            _menhir_reduce56 _menhir_env (Obj.magic _menhir_stack) MenhirState144
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState144)
    | MenhirState186 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | EOF ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (s : (Ast.stmt Ast.node))) = _menhir_stack in
            let _v : (Ast.stmt Ast.node) = 
# 96 "parser.mly"
               ( s )
# 2332 "parser.ml"
             in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_1 : (Ast.stmt Ast.node)) = _v in
            Obj.magic _1
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_goto_lhs : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (Ast.exp Ast.node) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    let _menhir_stack = (_menhir_stack, _endpos, _menhir_s, _v, _startpos) in
    match _menhir_s with
    | MenhirState134 | MenhirState129 | MenhirState119 | MenhirState108 | MenhirState103 | MenhirState101 | MenhirState95 | MenhirState0 | MenhirState5 | MenhirState11 | MenhirState13 | MenhirState14 | MenhirState18 | MenhirState66 | MenhirState64 | MenhirState62 | MenhirState60 | MenhirState58 | MenhirState56 | MenhirState54 | MenhirState52 | MenhirState50 | MenhirState48 | MenhirState46 | MenhirState44 | MenhirState42 | MenhirState40 | MenhirState38 | MenhirState36 | MenhirState33 | MenhirState31 | MenhirState26 | MenhirState19 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        _menhir_reduce33 _menhir_env (Obj.magic _menhir_stack)
    | MenhirState186 | MenhirState93 | MenhirState144 | MenhirState121 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | EQ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | BANG ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState129 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | DASH ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState129 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | FALSE ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState129 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | IDENT _v ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState129 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | INT _v ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState129 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LPAREN ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState129 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | NEW ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState129 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | STRING _v ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState129 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TBOOL ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState129 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TILDE ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState129 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TINT ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState129 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TRUE ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState129 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TSTRING ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState129 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState129)
        | AMP | BANGEQ | DASH | EQEQ | GT | GTEQ | GTGT | GTGTGT | LBAMPRB | LBPIPERB | LBRACKET | LPAREN | LT | LTEQ | LTLT | PIPE | PLUS | STAR ->
            _menhir_reduce33 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_goto_loption_separated_nonempty_list_COMMA_vdecl__ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.vdecl list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (xs : (Ast.vdecl list)) = _v in
    let _v : (Ast.vdecl list) = let v = 
# 232 "<standard.mly>"
    ( xs )
# 2413 "parser.ml"
     in
    
# 194 "parser.mly"
                                   ( v )
# 2418 "parser.ml"
     in
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | SEMI ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let _menhir_stack = (_menhir_stack, _endpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BANG ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState119 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | DASH ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState119 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | FALSE ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState119 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | IDENT _v ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState119 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | INT _v ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState119 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LPAREN ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState119 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | NEW ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState119 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | STRING _v ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState119 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | TBOOL ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState119 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | TILDE ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState119 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | TINT ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState119 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | TRUE ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState119 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | TSTRING ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState119 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState119 in
            let _v : (Ast.exp Ast.node option) = 
# 165 "parser.mly"
                ( None )
# 2464 "parser.ml"
             in
            _menhir_goto_exp_opt _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState119)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_goto_exp : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (Ast.exp Ast.node) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    let _menhir_stack = (_menhir_stack, _endpos, _menhir_s, _v, _startpos) in
    match _menhir_s with
    | MenhirState19 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACKET ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | AMP | BANGEQ | COMMA | DASH | EOF | EQEQ | GT | GTEQ | GTGT | GTGTGT | LBAMPRB | LBPIPERB | LT | LTEQ | LTLT | PIPE | PLUS | RBRACE | RBRACKET | RPAREN | SEMI | STAR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, _startpos__1_), _endpos_e_, _, (e : (Ast.exp Ast.node)), _startpos_e_) = _menhir_stack in
            let _startpos = _startpos__1_ in
            let _endpos = _endpos_e_ in
            let _v : (Ast.exp Ast.node) = let u = 
# 147 "parser.mly"
          ( Lognot )
# 2499 "parser.ml"
             in
            let _startpos_u_ = _startpos__1_ in
            let _endpos = _endpos_e_ in
            let _startpos = _startpos_u_ in
            
# 180 "parser.mly"
                        ( loc _startpos _endpos @@ Uop (u, e) )
# 2507 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState134 | MenhirState13 | MenhirState66 | MenhirState26 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AMP ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack)
        | BANGEQ ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack)
        | COMMA ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | BANG ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | DASH ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | FALSE ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState66 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | IDENT _v ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState66 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | INT _v ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState66 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LPAREN ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | NEW ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | STRING _v ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState66 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TBOOL ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TILDE ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TINT ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TRUE ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState66 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TSTRING ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState66)
        | DASH ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | EQEQ ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | GTEQ ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
        | GTGT ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | GTGTGT ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | LBAMPRB ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack)
        | LBPIPERB ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack)
        | LBRACKET ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LT ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | LTEQ ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack)
        | LTLT ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | PIPE ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | STAR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | RBRACE | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _endpos_x_, _menhir_s, (x : (Ast.exp Ast.node)), _startpos_x_) = _menhir_stack in
            let _v : (Ast.exp Ast.node list) = 
# 241 "<standard.mly>"
    ( [ x ] )
# 2598 "parser.ml"
             in
            _menhir_goto_separated_nonempty_list_COMMA_exp_ _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState31 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACKET ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | AMP | BANGEQ | COMMA | DASH | EOF | EQEQ | GT | GTEQ | GTGT | GTGTGT | LBAMPRB | LBPIPERB | LT | LTEQ | LTLT | PIPE | PLUS | RBRACE | RBRACKET | RPAREN | SEMI | STAR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _endpos_e1_, _menhir_s, (e1 : (Ast.exp Ast.node)), _startpos_e1_), _endpos_e2_, _, (e2 : (Ast.exp Ast.node)), _startpos_e2_) = _menhir_stack in
            let _startpos = _startpos_e1_ in
            let _endpos = _endpos_e2_ in
            let _v : (Ast.exp Ast.node) = let b = 
# 129 "parser.mly"
           ( Mul )
# 2624 "parser.ml"
             in
            let _endpos = _endpos_e2_ in
            let _startpos = _startpos_e1_ in
            
# 179 "parser.mly"
                        ( loc _startpos _endpos @@ Bop (b, e1, e2) )
# 2631 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState33 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AMP ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack)
        | BANGEQ ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack)
        | DASH ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | EQEQ ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | GTEQ ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
        | GTGT ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | GTGTGT ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | LBAMPRB ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack)
        | LBPIPERB ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack)
        | LBRACKET ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LT ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | LTEQ ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack)
        | LTLT ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | PIPE ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | RBRACKET ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _endpos__4_ = _endpos in
            let ((_menhir_stack, _endpos_e_, _menhir_s, (e : (Ast.exp Ast.node)), _startpos_e_), _endpos_i_, _, (i : (Ast.exp Ast.node)), _startpos_i_) = _menhir_stack in
            let _startpos = _startpos_e_ in
            let _endpos = _endpos__4_ in
            let _v : (Ast.exp Ast.node) = let _endpos = _endpos__4_ in
            let _startpos = _startpos_e_ in
            
# 162 "parser.mly"
                        ( loc _startpos _endpos @@ Index (e, i) )
# 2693 "parser.ml"
             in
            _menhir_goto_lhs _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
        | STAR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState36 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACKET ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | STAR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | AMP | BANGEQ | COMMA | DASH | EOF | EQEQ | GT | GTEQ | GTGT | GTGTGT | LBAMPRB | LBPIPERB | LT | LTEQ | LTLT | PIPE | PLUS | RBRACE | RBRACKET | RPAREN | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _endpos_e1_, _menhir_s, (e1 : (Ast.exp Ast.node)), _startpos_e1_), _endpos_e2_, _, (e2 : (Ast.exp Ast.node)), _startpos_e2_) = _menhir_stack in
            let _startpos = _startpos_e1_ in
            let _endpos = _endpos_e2_ in
            let _v : (Ast.exp Ast.node) = let b = 
# 127 "parser.mly"
           ( Add )
# 2723 "parser.ml"
             in
            let _endpos = _endpos_e2_ in
            let _startpos = _startpos_e1_ in
            
# 179 "parser.mly"
                        ( loc _startpos _endpos @@ Bop (b, e1, e2) )
# 2730 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState38 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AMP ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack)
        | BANGEQ ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack)
        | DASH ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | EQEQ ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | GTEQ ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
        | GTGT ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | GTGTGT ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | LBRACKET ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LT ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | LTEQ ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack)
        | LTLT ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | STAR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | EOF | LBAMPRB | LBPIPERB | PIPE | RBRACE | RBRACKET | RPAREN | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _endpos_e1_, _menhir_s, (e1 : (Ast.exp Ast.node)), _startpos_e1_), _endpos_e2_, _, (e2 : (Ast.exp Ast.node)), _startpos_e2_) = _menhir_stack in
            let _startpos = _startpos_e1_ in
            let _endpos = _endpos_e2_ in
            let _v : (Ast.exp Ast.node) = let b = 
# 137 "parser.mly"
         ( Or  )
# 2782 "parser.ml"
             in
            let _endpos = _endpos_e2_ in
            let _startpos = _startpos_e1_ in
            
# 179 "parser.mly"
                        ( loc _startpos _endpos @@ Bop (b, e1, e2) )
# 2789 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState40 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DASH ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LBRACKET ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | PLUS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | STAR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | AMP | BANGEQ | COMMA | EOF | EQEQ | GT | GTEQ | GTGT | GTGTGT | LBAMPRB | LBPIPERB | LT | LTEQ | LTLT | PIPE | RBRACE | RBRACKET | RPAREN | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _endpos_e1_, _menhir_s, (e1 : (Ast.exp Ast.node)), _startpos_e1_), _endpos_e2_, _, (e2 : (Ast.exp Ast.node)), _startpos_e2_) = _menhir_stack in
            let _startpos = _startpos_e1_ in
            let _endpos = _endpos_e2_ in
            let _v : (Ast.exp Ast.node) = let b = 
# 140 "parser.mly"
           ( Shl )
# 2821 "parser.ml"
             in
            let _endpos = _endpos_e2_ in
            let _startpos = _startpos_e1_ in
            
# 179 "parser.mly"
                        ( loc _startpos _endpos @@ Bop (b, e1, e2) )
# 2828 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState42 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACKET ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | STAR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | AMP | BANGEQ | COMMA | DASH | EOF | EQEQ | GT | GTEQ | GTGT | GTGTGT | LBAMPRB | LBPIPERB | LT | LTEQ | LTLT | PIPE | PLUS | RBRACE | RBRACKET | RPAREN | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _endpos_e1_, _menhir_s, (e1 : (Ast.exp Ast.node)), _startpos_e1_), _startpos__1_), _endpos_e2_, _, (e2 : (Ast.exp Ast.node)), _startpos_e2_) = _menhir_stack in
            let _startpos = _startpos_e1_ in
            let _endpos = _endpos_e2_ in
            let _v : (Ast.exp Ast.node) = let b = 
# 128 "parser.mly"
           ( Sub )
# 2856 "parser.ml"
             in
            let _endpos = _endpos_e2_ in
            let _startpos = _startpos_e1_ in
            
# 179 "parser.mly"
                        ( loc _startpos _endpos @@ Bop (b, e1, e2) )
# 2863 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState44 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DASH ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | GTGT ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | GTGTGT ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | LBRACKET ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LTLT ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | STAR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | AMP | BANGEQ | COMMA | EOF | EQEQ | GT | GTEQ | LBAMPRB | LBPIPERB | LT | LTEQ | PIPE | RBRACE | RBRACKET | RPAREN | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _endpos_e1_, _menhir_s, (e1 : (Ast.exp Ast.node)), _startpos_e1_), _endpos_e2_, _, (e2 : (Ast.exp Ast.node)), _startpos_e2_) = _menhir_stack in
            let _startpos = _startpos_e1_ in
            let _endpos = _endpos_e2_ in
            let _v : (Ast.exp Ast.node) = let b = 
# 133 "parser.mly"
           ( Lte )
# 2901 "parser.ml"
             in
            let _endpos = _endpos_e2_ in
            let _startpos = _startpos_e1_ in
            
# 179 "parser.mly"
                        ( loc _startpos _endpos @@ Bop (b, e1, e2) )
# 2908 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState46 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DASH ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LBRACKET ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | PLUS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | STAR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | AMP | BANGEQ | COMMA | EOF | EQEQ | GT | GTEQ | GTGT | GTGTGT | LBAMPRB | LBPIPERB | LT | LTEQ | LTLT | PIPE | RBRACE | RBRACKET | RPAREN | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _endpos_e1_, _menhir_s, (e1 : (Ast.exp Ast.node)), _startpos_e1_), _endpos_e2_, _, (e2 : (Ast.exp Ast.node)), _startpos_e2_) = _menhir_stack in
            let _startpos = _startpos_e1_ in
            let _endpos = _endpos_e2_ in
            let _v : (Ast.exp Ast.node) = let b = 
# 142 "parser.mly"
             ( Sar )
# 2940 "parser.ml"
             in
            let _endpos = _endpos_e2_ in
            let _startpos = _startpos_e1_ in
            
# 179 "parser.mly"
                        ( loc _startpos _endpos @@ Bop (b, e1, e2) )
# 2947 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState48 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DASH ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LBRACKET ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | PLUS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | STAR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | AMP | BANGEQ | COMMA | EOF | EQEQ | GT | GTEQ | GTGT | GTGTGT | LBAMPRB | LBPIPERB | LT | LTEQ | LTLT | PIPE | RBRACE | RBRACKET | RPAREN | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _endpos_e1_, _menhir_s, (e1 : (Ast.exp Ast.node)), _startpos_e1_), _endpos_e2_, _, (e2 : (Ast.exp Ast.node)), _startpos_e2_) = _menhir_stack in
            let _startpos = _startpos_e1_ in
            let _endpos = _endpos_e2_ in
            let _v : (Ast.exp Ast.node) = let b = 
# 141 "parser.mly"
           ( Shr )
# 2979 "parser.ml"
             in
            let _endpos = _endpos_e2_ in
            let _startpos = _startpos_e1_ in
            
# 179 "parser.mly"
                        ( loc _startpos _endpos @@ Bop (b, e1, e2) )
# 2986 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState50 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DASH ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | GTGT ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | GTGTGT ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | LBRACKET ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LTLT ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | STAR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | AMP | BANGEQ | COMMA | EOF | EQEQ | GT | GTEQ | LBAMPRB | LBPIPERB | LT | LTEQ | PIPE | RBRACE | RBRACKET | RPAREN | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _endpos_e1_, _menhir_s, (e1 : (Ast.exp Ast.node)), _startpos_e1_), _endpos_e2_, _, (e2 : (Ast.exp Ast.node)), _startpos_e2_) = _menhir_stack in
            let _startpos = _startpos_e1_ in
            let _endpos = _endpos_e2_ in
            let _v : (Ast.exp Ast.node) = let b = 
# 132 "parser.mly"
         ( Lt )
# 3024 "parser.ml"
             in
            let _endpos = _endpos_e2_ in
            let _startpos = _startpos_e1_ in
            
# 179 "parser.mly"
                        ( loc _startpos _endpos @@ Bop (b, e1, e2) )
# 3031 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState52 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DASH ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | GTGT ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | GTGTGT ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | LBRACKET ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LTLT ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | STAR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | AMP | BANGEQ | COMMA | EOF | EQEQ | GT | GTEQ | LBAMPRB | LBPIPERB | LT | LTEQ | PIPE | RBRACE | RBRACKET | RPAREN | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _endpos_e1_, _menhir_s, (e1 : (Ast.exp Ast.node)), _startpos_e1_), _endpos_e2_, _, (e2 : (Ast.exp Ast.node)), _startpos_e2_) = _menhir_stack in
            let _startpos = _startpos_e1_ in
            let _endpos = _endpos_e2_ in
            let _v : (Ast.exp Ast.node) = let b = 
# 135 "parser.mly"
           ( Gte )
# 3069 "parser.ml"
             in
            let _endpos = _endpos_e2_ in
            let _startpos = _startpos_e1_ in
            
# 179 "parser.mly"
                        ( loc _startpos _endpos @@ Bop (b, e1, e2) )
# 3076 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState54 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DASH ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | GTGT ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | GTGTGT ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | LBRACKET ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LTLT ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | STAR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | AMP | BANGEQ | COMMA | EOF | EQEQ | GT | GTEQ | LBAMPRB | LBPIPERB | LT | LTEQ | PIPE | RBRACE | RBRACKET | RPAREN | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _endpos_e1_, _menhir_s, (e1 : (Ast.exp Ast.node)), _startpos_e1_), _endpos_e2_, _, (e2 : (Ast.exp Ast.node)), _startpos_e2_) = _menhir_stack in
            let _startpos = _startpos_e1_ in
            let _endpos = _endpos_e2_ in
            let _v : (Ast.exp Ast.node) = let b = 
# 134 "parser.mly"
         ( Gt )
# 3114 "parser.ml"
             in
            let _endpos = _endpos_e2_ in
            let _startpos = _startpos_e1_ in
            
# 179 "parser.mly"
                        ( loc _startpos _endpos @@ Bop (b, e1, e2) )
# 3121 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState56 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DASH ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | GT ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | GTEQ ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
        | GTGT ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | GTGTGT ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | LBRACKET ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LT ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | LTEQ ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack)
        | LTLT ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | STAR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | AMP | BANGEQ | COMMA | EOF | EQEQ | LBAMPRB | LBPIPERB | PIPE | RBRACE | RBRACKET | RPAREN | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _endpos_e1_, _menhir_s, (e1 : (Ast.exp Ast.node)), _startpos_e1_), _endpos_e2_, _, (e2 : (Ast.exp Ast.node)), _startpos_e2_) = _menhir_stack in
            let _startpos = _startpos_e1_ in
            let _endpos = _endpos_e2_ in
            let _v : (Ast.exp Ast.node) = let b = 
# 130 "parser.mly"
           ( Eq )
# 3167 "parser.ml"
             in
            let _endpos = _endpos_e2_ in
            let _startpos = _startpos_e1_ in
            
# 179 "parser.mly"
                        ( loc _startpos _endpos @@ Bop (b, e1, e2) )
# 3174 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState58 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DASH ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | GT ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | GTEQ ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
        | GTGT ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | GTGTGT ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | LBRACKET ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LT ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | LTEQ ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack)
        | LTLT ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | STAR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | AMP | BANGEQ | COMMA | EOF | EQEQ | LBAMPRB | LBPIPERB | PIPE | RBRACE | RBRACKET | RPAREN | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _endpos_e1_, _menhir_s, (e1 : (Ast.exp Ast.node)), _startpos_e1_), _endpos_e2_, _, (e2 : (Ast.exp Ast.node)), _startpos_e2_) = _menhir_stack in
            let _startpos = _startpos_e1_ in
            let _endpos = _endpos_e2_ in
            let _v : (Ast.exp Ast.node) = let b = 
# 131 "parser.mly"
             ( Neq )
# 3220 "parser.ml"
             in
            let _endpos = _endpos_e2_ in
            let _startpos = _startpos_e1_ in
            
# 179 "parser.mly"
                        ( loc _startpos _endpos @@ Bop (b, e1, e2) )
# 3227 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState60 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BANGEQ ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack)
        | DASH ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | EQEQ ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | GTEQ ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
        | GTGT ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | GTGTGT ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | LBRACKET ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LT ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | LTEQ ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack)
        | LTLT ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | STAR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | AMP | COMMA | EOF | LBAMPRB | LBPIPERB | PIPE | RBRACE | RBRACKET | RPAREN | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _endpos_e1_, _menhir_s, (e1 : (Ast.exp Ast.node)), _startpos_e1_), _endpos_e2_, _, (e2 : (Ast.exp Ast.node)), _startpos_e2_) = _menhir_stack in
            let _startpos = _startpos_e1_ in
            let _endpos = _endpos_e2_ in
            let _v : (Ast.exp Ast.node) = let b = 
# 136 "parser.mly"
          ( And )
# 3277 "parser.ml"
             in
            let _endpos = _endpos_e2_ in
            let _startpos = _startpos_e1_ in
            
# 179 "parser.mly"
                        ( loc _startpos _endpos @@ Bop (b, e1, e2) )
# 3284 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState62 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AMP ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack)
        | BANGEQ ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack)
        | DASH ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | EQEQ ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | GTEQ ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
        | GTGT ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | GTGTGT ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | LBAMPRB ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack)
        | LBRACKET ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LT ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | LTEQ ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack)
        | LTLT ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | PIPE ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | STAR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | EOF | LBPIPERB | RBRACE | RBRACKET | RPAREN | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _endpos_e1_, _menhir_s, (e1 : (Ast.exp Ast.node)), _startpos_e1_), _endpos_e2_, _, (e2 : (Ast.exp Ast.node)), _startpos_e2_) = _menhir_stack in
            let _startpos = _startpos_e1_ in
            let _endpos = _endpos_e2_ in
            let _v : (Ast.exp Ast.node) = let b = 
# 139 "parser.mly"
               ( IOr )
# 3340 "parser.ml"
             in
            let _endpos = _endpos_e2_ in
            let _startpos = _startpos_e1_ in
            
# 179 "parser.mly"
                        ( loc _startpos _endpos @@ Bop (b, e1, e2) )
# 3347 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState64 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AMP ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack)
        | BANGEQ ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack)
        | DASH ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | EQEQ ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | GTEQ ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
        | GTGT ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | GTGTGT ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | LBRACKET ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LT ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | LTEQ ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack)
        | LTLT ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | PIPE ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | STAR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | EOF | LBAMPRB | LBPIPERB | RBRACE | RBRACKET | RPAREN | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _endpos_e1_, _menhir_s, (e1 : (Ast.exp Ast.node)), _startpos_e1_), _endpos_e2_, _, (e2 : (Ast.exp Ast.node)), _startpos_e2_) = _menhir_stack in
            let _startpos = _startpos_e1_ in
            let _endpos = _endpos_e2_ in
            let _v : (Ast.exp Ast.node) = let b = 
# 138 "parser.mly"
              ( IAnd )
# 3401 "parser.ml"
             in
            let _endpos = _endpos_e2_ in
            let _startpos = _startpos_e1_ in
            
# 179 "parser.mly"
                        ( loc _startpos _endpos @@ Bop (b, e1, e2) )
# 3408 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState18 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACKET ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | STAR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | AMP | BANGEQ | COMMA | DASH | EOF | EQEQ | GT | GTEQ | GTGT | GTGTGT | LBAMPRB | LBPIPERB | LT | LTEQ | LTLT | PIPE | PLUS | RBRACE | RBRACKET | RPAREN | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, _startpos__1_), _endpos_e_, _, (e : (Ast.exp Ast.node)), _startpos_e_) = _menhir_stack in
            let _startpos = _startpos__1_ in
            let _endpos = _endpos_e_ in
            let _v : (Ast.exp Ast.node) = let u = 
# 146 "parser.mly"
          ( Neg )
# 3436 "parser.ml"
             in
            let _startpos_u_ = _startpos__1_ in
            let _endpos = _endpos_e_ in
            let _startpos = _startpos_u_ in
            
# 180 "parser.mly"
                        ( loc _startpos _endpos @@ Uop (u, e) )
# 3444 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState14 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AMP ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack)
        | BANGEQ ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack)
        | DASH ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | EQEQ ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | GTEQ ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
        | GTGT ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | GTGTGT ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | LBAMPRB ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack)
        | LBPIPERB ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack)
        | LBRACKET ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LT ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | LTEQ ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack)
        | LTLT ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | PIPE ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _endpos__3_ = _endpos in
            let ((_menhir_stack, _menhir_s, _startpos__1_), _endpos_e_, _, (e : (Ast.exp Ast.node)), _startpos_e_) = _menhir_stack in
            let _startpos = _startpos__1_ in
            let _endpos = _endpos__3_ in
            let _v : (Ast.exp Ast.node) = 
# 188 "parser.mly"
                        ( e )
# 3504 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
        | STAR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState11 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AMP ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack)
        | BANGEQ ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack)
        | DASH ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | EQEQ ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | GTEQ ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
        | GTGT ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | GTGTGT ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | LBAMPRB ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack)
        | LBPIPERB ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack)
        | LBRACKET ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LT ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | LTEQ ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack)
        | LTLT ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | PIPE ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | RBRACKET ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _endpos__5_ = _endpos in
            let (((_menhir_stack, _menhir_s, _startpos__1_), _, (t : (Ast.ty)), _startpos_t_), _endpos_i_, _, (i : (Ast.exp Ast.node)), _startpos_i_) = _menhir_stack in
            let _startpos = _startpos__1_ in
            let _endpos = _endpos__5_ in
            let _v : (Ast.exp Ast.node) = let _endpos = _endpos__5_ in
            let _startpos = _startpos__1_ in
            
# 177 "parser.mly"
                        ( loc _startpos _endpos @@ NewArr (t, i) )
# 3568 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
        | STAR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState5 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACKET ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | AMP | BANGEQ | COMMA | DASH | EOF | EQEQ | GT | GTEQ | GTGT | GTGTGT | LBAMPRB | LBPIPERB | LT | LTEQ | LTLT | PIPE | PLUS | RBRACE | RBRACKET | RPAREN | SEMI | STAR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, _startpos__1_), _endpos_e_, _, (e : (Ast.exp Ast.node)), _startpos_e_) = _menhir_stack in
            let _startpos = _startpos__1_ in
            let _endpos = _endpos_e_ in
            let _v : (Ast.exp Ast.node) = let u = 
# 148 "parser.mly"
          ( Bitnot )
# 3596 "parser.ml"
             in
            let _startpos_u_ = _startpos__1_ in
            let _endpos = _endpos_e_ in
            let _startpos = _startpos_u_ in
            
# 180 "parser.mly"
                        ( loc _startpos _endpos @@ Uop (u, e) )
# 3604 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState0 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AMP ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack)
        | BANGEQ ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack)
        | DASH ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | EOF ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _endpos_e_, _menhir_s, (e : (Ast.exp Ast.node)), _startpos_e_) = _menhir_stack in
            let _v : (Ast.exp Ast.node) = 
# 93 "parser.mly"
              ( e )
# 3631 "parser.ml"
             in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_1 : (Ast.exp Ast.node)) = _v in
            Obj.magic _1
        | EQEQ ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | GTEQ ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
        | GTGT ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | GTGTGT ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | LBAMPRB ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack)
        | LBPIPERB ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack)
        | LBRACKET ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LT ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | LTEQ ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack)
        | LTLT ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | PIPE ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | STAR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState95 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AMP ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack)
        | BANGEQ ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack)
        | DASH ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | EQEQ ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | GTEQ ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
        | GTGT ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | GTGTGT ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | LBAMPRB ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack)
        | LBPIPERB ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack)
        | LBRACKET ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LT ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | LTEQ ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack)
        | LTLT ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | PIPE ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            let _menhir_stack = (_menhir_stack, _endpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | LBRACE ->
                _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState97)
        | STAR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState101 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AMP ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack)
        | BANGEQ ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack)
        | DASH ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | EQEQ ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | GTEQ ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
        | GTGT ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | GTGTGT ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | LBAMPRB ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack)
        | LBPIPERB ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack)
        | LBRACKET ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LT ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | LTEQ ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack)
        | LTLT ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | PIPE ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | STAR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, _startpos__1_), _endpos_id_, (id : (
# 14 "parser.mly"
       (string)
# 3779 "parser.ml"
            )), _startpos_id_), _endpos_init_, _, (init : (Ast.exp Ast.node)), _startpos_init_) = _menhir_stack in
            let _startpos = _startpos__1_ in
            let _v : (Ast.vdecl) = 
# 191 "parser.mly"
                             ( (id, init) )
# 3785 "parser.ml"
             in
            let _menhir_stack = (_menhir_stack, _menhir_s, _v, _startpos) in
            (match _menhir_s with
            | MenhirState186 | MenhirState144 | MenhirState93 | MenhirState121 ->
                let _menhir_stack = Obj.magic _menhir_stack in
                assert (not _menhir_env._menhir_error);
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | SEMI ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _endpos__2_ = _endpos in
                    let (_menhir_stack, _menhir_s, (d : (Ast.vdecl)), _startpos_d_) = _menhir_stack in
                    let _v : (Ast.stmt Ast.node) = let _endpos = _endpos__2_ in
                    let _startpos = _startpos_d_ in
                    
# 197 "parser.mly"
                        ( loc _startpos _endpos @@ Decl(d) )
# 3806 "parser.ml"
                     in
                    _menhir_goto_stmt _menhir_env _menhir_stack _menhir_s _v
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
            | MenhirState140 | MenhirState117 ->
                let _menhir_stack = Obj.magic _menhir_stack in
                assert (not _menhir_env._menhir_error);
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | COMMA ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    (match _tok with
                    | VAR ->
                        _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState140 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState140)
                | SEMI ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let (_menhir_stack, _menhir_s, (x : (Ast.vdecl)), _startpos_x_) = _menhir_stack in
                    let _v : (Ast.vdecl list) = 
# 241 "<standard.mly>"
    ( [ x ] )
# 3837 "parser.ml"
                     in
                    _menhir_goto_separated_nonempty_list_COMMA_vdecl_ _menhir_env _menhir_stack _menhir_s _v
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
            | _ ->
                _menhir_fail ())
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState103 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AMP ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack)
        | BANGEQ ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack)
        | DASH ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | EQEQ ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | GTEQ ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
        | GTGT ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | GTGTGT ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | LBAMPRB ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack)
        | LBPIPERB ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack)
        | LBRACKET ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LT ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | LTEQ ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack)
        | LTLT ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | PIPE ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _endpos__3_ = _endpos in
            let ((_menhir_stack, _menhir_s, _startpos__1_), _endpos_e_, _, (e : (Ast.exp Ast.node)), _startpos_e_) = _menhir_stack in
            let _v : (Ast.stmt Ast.node) = let _endpos = _endpos__3_ in
            let _startpos = _startpos__1_ in
            
# 203 "parser.mly"
                        ( loc _startpos _endpos @@ Ret(Some e) )
# 3905 "parser.ml"
             in
            _menhir_goto_stmt _menhir_env _menhir_stack _menhir_s _v
        | STAR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState108 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AMP ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack)
        | BANGEQ ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack)
        | DASH ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | EQEQ ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | GTEQ ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
        | GTGT ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | GTGTGT ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | LBAMPRB ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack)
        | LBPIPERB ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack)
        | LBRACKET ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LT ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | LTEQ ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack)
        | LTLT ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | PIPE ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            let _menhir_stack = (_menhir_stack, _endpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | LBRACE ->
                _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState110
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState110)
        | STAR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState129 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AMP ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack)
        | BANGEQ ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack)
        | DASH ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | EQEQ ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | GTEQ ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
        | GTGT ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | GTGTGT ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | LBAMPRB ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack)
        | LBPIPERB ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack)
        | LBRACKET ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LT ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | LTEQ ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack)
        | LTLT ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | PIPE ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _endpos__4_ = _endpos in
            let ((_menhir_stack, _endpos_p_, _menhir_s, (p : (Ast.exp Ast.node)), _startpos_p_), _endpos_e_, _, (e : (Ast.exp Ast.node)), _startpos_e_) = _menhir_stack in
            let _v : (Ast.stmt Ast.node) = let _endpos = _endpos__4_ in
            let _startpos = _startpos_p_ in
            
# 198 "parser.mly"
                        ( loc _startpos _endpos @@ Assn(p,e) )
# 4027 "parser.ml"
             in
            _menhir_goto_stmt _menhir_env _menhir_stack _menhir_s _v
        | STAR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState186 | MenhirState93 | MenhirState144 | MenhirState121 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AMP ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack)
        | BANGEQ ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack)
        | DASH ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | EQEQ ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | GTEQ ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
        | GTGT ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | GTGTGT ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | LBAMPRB ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack)
        | LBPIPERB ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack)
        | LBRACKET ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _startpos = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
            let _menhir_stack = (_menhir_stack, _startpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | BANG ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState134 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | DASH ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState134 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | FALSE ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState134 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | IDENT _v ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState134 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | INT _v ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState134 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LPAREN ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState134 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | NEW ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState134 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | STRING _v ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState134 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TBOOL ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState134 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TILDE ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState134 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TINT ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState134 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TRUE ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState134 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TSTRING ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState134 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | RPAREN ->
                _menhir_reduce58 _menhir_env (Obj.magic _menhir_stack) MenhirState134
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState134)
        | LT ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | LTEQ ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack)
        | LTLT ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | PIPE ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | STAR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState119 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AMP ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack)
        | BANGEQ ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack)
        | DASH ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | EQEQ ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | GTEQ ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
        | GTGT ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | GTGTGT ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | LBAMPRB ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack)
        | LBPIPERB ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack)
        | LBRACKET ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LT ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | LTEQ ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack)
        | LTLT ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | PIPE ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | STAR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _endpos_e_, _menhir_s, (e : (Ast.exp Ast.node)), _startpos_e_) = _menhir_stack in
            let _v : (Ast.exp Ast.node option) = 
# 166 "parser.mly"
          ( Some e )
# 4169 "parser.ml"
             in
            _menhir_goto_exp_opt _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_reduce54 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (Ast.prog) = 
# 211 "<standard.mly>"
    ( [] )
# 4186 "parser.ml"
     in
    _menhir_goto_list_decl_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run80 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let _startpos = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        let _menhir_stack = (_menhir_stack, _endpos, _v, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _startpos = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
            let _menhir_stack = (_menhir_stack, _startpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | TBOOL ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TINT ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TSTRING ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | RPAREN ->
                _menhir_reduce62 _menhir_env (Obj.magic _menhir_stack) MenhirState82
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState82)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, _), _, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run9 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce87 _menhir_env (Obj.magic _menhir_stack)

and _menhir_run149 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let _startpos = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        let _menhir_stack = (_menhir_stack, _endpos, _v, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | EQ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | FALSE ->
                _menhir_run162 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState151 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | INT _v ->
                _menhir_run161 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState151 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | NEW ->
                _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState151 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | STRING _v ->
                _menhir_run155 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState151 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TBOOL ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState151 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TINT ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState151 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TRUE ->
                _menhir_run154 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState151 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TSTRING ->
                _menhir_run152 _menhir_env (Obj.magic _menhir_stack) MenhirState151 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState151)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, _), _, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState186 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR
    | MenhirState184 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState179 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState177 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s, _, _), _, _, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState171 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState164 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState160 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState158 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState156 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState151 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState144 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState140 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState134 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _, _menhir_s, _, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState129 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState125 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState121 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState119 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState117 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState112 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR
    | MenhirState110 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _, _menhir_s, _, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState108 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState103 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState101 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState97 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _, _menhir_s, _, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState95 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState93 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState92 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState87 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _, _), _, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState84 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState82 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s, _), _, _, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState79 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR
    | MenhirState66 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState64 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState62 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState60 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState58 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState56 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState54 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState52 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState50 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState48 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState46 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState44 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState42 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _, _menhir_s, _, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState40 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState38 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState36 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState33 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState31 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState26 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _, _menhir_s, _, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState21 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState19 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState18 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState14 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState13 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState11 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState8 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState5 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState0 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR

and _menhir_run94 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _startpos = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        let _menhir_stack = (_menhir_stack, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BANG ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | DASH ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | FALSE ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState95 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | IDENT _v ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState95 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | INT _v ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState95 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LPAREN ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | NEW ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | STRING _v ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState95 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | TBOOL ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | TILDE ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | TINT ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | TRUE ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState95 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | TSTRING ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState95)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run99 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let _startpos = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        let _menhir_stack = (_menhir_stack, _endpos, _v, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | EQ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | BANG ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState101 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | DASH ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState101 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | FALSE ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState101 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | IDENT _v ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState101 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | INT _v ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState101 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LPAREN ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState101 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | NEW ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState101 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | STRING _v ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState101 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TBOOL ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState101 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TILDE ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState101 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TINT ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState101 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TRUE ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState101 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TSTRING ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState101 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState101)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, _), _, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | NULL ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _endpos__2_ = _endpos in
        let (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__2_ in
        let _v : (Ast.exp Ast.node) = let t = 
# 123 "parser.mly"
            ( RString )
# 4660 "parser.ml"
         in
        let _startpos_t_ = _startpos__1_ in
        let _endpos = _endpos__2_ in
        let _startpos = _startpos_t_ in
        
# 186 "parser.mly"
                 ( loc _startpos _endpos @@ CNull t )
# 4668 "parser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
    | LBRACKET ->
        _menhir_reduce87 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run3 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _endpos_t_ = _endpos in
    let _startpos_t_ = _startpos in
    let t = () in
    let _startpos = _startpos_t_ in
    let _endpos = _endpos_t_ in
    let _v : (Ast.exp Ast.node) = let _endpos = _endpos_t_ in
    let _startpos = _startpos_t_ in
    
# 183 "parser.mly"
               ( loc _startpos _endpos @@ CBool true )
# 4694 "parser.ml"
     in
    _menhir_goto_exp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_run4 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _startpos__1_ = _startpos in
    let _startpos = _startpos__1_ in
    let _v : (Ast.ty) = 
# 111 "parser.mly"
           ( TInt )
# 4707 "parser.ml"
     in
    _menhir_goto_ty _menhir_env _menhir_stack _menhir_s _v _startpos

and _menhir_run5 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BANG ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | DASH ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState5 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState5 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INT _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState5 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NEW ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState5 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TBOOL ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TILDE ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TINT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState5 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TSTRING ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState5

and _menhir_run6 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _startpos__1_ = _startpos in
    let _startpos = _startpos__1_ in
    let _v : (Ast.ty) = 
# 113 "parser.mly"
            ( TBool )
# 4757 "parser.ml"
     in
    _menhir_goto_ty _menhir_env _menhir_stack _menhir_s _v _startpos

and _menhir_run7 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (
# 13 "parser.mly"
       (string)
# 4764 "parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _endpos_s_ = _endpos in
    let (s : (
# 13 "parser.mly"
       (string)
# 4773 "parser.ml"
    )) = _v in
    let _startpos_s_ = _startpos in
    let _startpos = _startpos_s_ in
    let _endpos = _endpos_s_ in
    let _v : (Ast.exp Ast.node) = let _endpos = _endpos_s_ in
    let _startpos = _startpos_s_ in
    
# 185 "parser.mly"
               ( loc _startpos _endpos @@ CStr s )
# 4783 "parser.ml"
     in
    _menhir_goto_exp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_run103 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BANG ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | DASH ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState103 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState103 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INT _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState103 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NEW ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | SEMI ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let _menhir_s = MenhirState103 in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _endpos__2_ = _endpos in
        let (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
        let _v : (Ast.stmt Ast.node) = let _endpos = _endpos__2_ in
        let _startpos = _startpos__1_ in
        
# 202 "parser.mly"
                        ( loc _startpos _endpos @@ Ret(None) )
# 4820 "parser.ml"
         in
        _menhir_goto_stmt _menhir_env _menhir_stack _menhir_s _v
    | STRING _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState103 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TBOOL ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TILDE ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TINT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState103 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TSTRING ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState103

and _menhir_run8 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | TBOOL ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState8 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TINT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState8 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TSTRING ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState8 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState8

and _menhir_run14 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BANG ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | DASH ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState14 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState14 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INT _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState14 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NEW ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState14 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TBOOL ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TILDE ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TINT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState14 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TSTRING ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState14

and _menhir_run15 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (
# 11 "parser.mly"
       (int64)
# 4897 "parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _endpos_i_ = _endpos in
    let (i : (
# 11 "parser.mly"
       (int64)
# 4906 "parser.ml"
    )) = _v in
    let _startpos_i_ = _startpos in
    let _startpos = _startpos_i_ in
    let _endpos = _endpos_i_ in
    let _v : (Ast.exp Ast.node) = let _endpos = _endpos_i_ in
    let _startpos = _startpos_i_ in
    
# 182 "parser.mly"
               ( loc _startpos _endpos @@ CInt i )
# 4916 "parser.ml"
     in
    _menhir_goto_exp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_run107 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _startpos = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        let _menhir_stack = (_menhir_stack, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BANG ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState108 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | DASH ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState108 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | FALSE ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState108 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | IDENT _v ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState108 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | INT _v ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState108 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LPAREN ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState108 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | NEW ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState108 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | STRING _v ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState108 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | TBOOL ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState108 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | TILDE ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState108 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | TINT ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState108 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | TRUE ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState108 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | TSTRING ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState108 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState108)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run16 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (
# 14 "parser.mly"
       (string)
# 4973 "parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _endpos_id_ = _endpos in
    let (id : (
# 14 "parser.mly"
       (string)
# 4982 "parser.ml"
    )) = _v in
    let _startpos_id_ = _startpos in
    let _startpos = _startpos_id_ in
    let _endpos = _endpos_id_ in
    let _v : (Ast.exp Ast.node) = let _endpos = _endpos_id_ in
    let _startpos = _startpos_id_ in
    
# 160 "parser.mly"
                        ( loc _startpos _endpos @@ Id id )
# 4992 "parser.ml"
     in
    _menhir_goto_lhs _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_run116 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _startpos = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        let _menhir_stack = (_menhir_stack, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | VAR ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState117 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState117 in
            let _v : (Ast.vdecl list) = 
# 142 "<standard.mly>"
    ( [] )
# 5017 "parser.ml"
             in
            _menhir_goto_loption_separated_nonempty_list_COMMA_vdecl__ _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState117)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run17 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _endpos_f_ = _endpos in
    let _startpos_f_ = _startpos in
    let f = () in
    let _startpos = _startpos_f_ in
    let _endpos = _endpos_f_ in
    let _v : (Ast.exp Ast.node) = let _endpos = _endpos_f_ in
    let _startpos = _startpos_f_ in
    
# 184 "parser.mly"
                ( loc _startpos _endpos @@ CBool false )
# 5045 "parser.ml"
     in
    _menhir_goto_exp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_run18 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BANG ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | DASH ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState18 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState18 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INT _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState18 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NEW ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState18 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TBOOL ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TILDE ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TINT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState18 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TSTRING ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState18

and _menhir_run19 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BANG ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | DASH ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState19 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState19 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INT _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState19 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NEW ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState19 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TBOOL ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TILDE ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TINT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState19 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TSTRING ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState19

and _menhir_discard : _menhir_env -> _menhir_env =
  fun _menhir_env ->
    let lexer = _menhir_env._menhir_lexer in
    let lexbuf = _menhir_env._menhir_lexbuf in
    let _tok = lexer lexbuf in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
    }

and exp_top : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.exp Ast.node) =
  fun lexer lexbuf ->
    let _menhir_env = {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = Obj.magic ();
      _menhir_error = false;
    } in
    Obj.magic (let _menhir_stack = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BANG ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | DASH ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState0 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState0 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INT _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState0 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NEW ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState0 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TBOOL ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TILDE ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TINT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState0 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TSTRING ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0)

and prog : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.prog) =
  fun lexer lexbuf ->
    let _menhir_env = {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = Obj.magic ();
      _menhir_error = false;
    } in
    Obj.magic (let _menhir_stack = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | GLOBAL ->
        _menhir_run149 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TBOOL ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TINT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TSTRING ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TVOID ->
        _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | EOF ->
        _menhir_reduce54 _menhir_env (Obj.magic _menhir_stack) MenhirState79
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState79)

and stmt_top : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.stmt Ast.node) =
  fun lexer lexbuf ->
    let _menhir_env = {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = Obj.magic ();
      _menhir_error = false;
    } in
    Obj.magic (let _menhir_stack = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BANG ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState186 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | DASH ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState186 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState186 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FOR ->
        _menhir_run116 _menhir_env (Obj.magic _menhir_stack) MenhirState186 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState186 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IF ->
        _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState186 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INT _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState186 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState186 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NEW ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState186 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | RETURN ->
        _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState186 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState186 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TBOOL ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState186 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TILDE ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState186 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TINT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState186 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState186 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TSTRING ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState186 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | VAR ->
        _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState186 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | WHILE ->
        _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState186 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState186)

# 269 "<standard.mly>"
  

# 5263 "parser.ml"
