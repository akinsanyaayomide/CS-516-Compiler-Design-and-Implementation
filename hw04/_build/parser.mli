
(* The type of tokens. *)

type token = 
  | WHILE
  | VAR
  | TVOID
  | TSTRING
  | TRUE
  | TINT
  | TILDE
  | TBOOL
  | STRING of (string)
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
  | INT of (int64)
  | IF
  | IDENT of (string)
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

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val stmt_top: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.stmt Ast.node)

val prog: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.prog)

val exp_top: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.exp Ast.node)
