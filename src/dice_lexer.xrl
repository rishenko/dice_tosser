Definitions.

Number          = [0-9]+
Operator        = [\+\-\*\/d]
Space           = [\s\r\n\t]+
LeftParen       = \(
RightParen      = \)

Rules.

{Number}            : {token, {int, TokenLine, TokenChars}}.
{Number}\.{Number}  : {token, {float, TokenLine, TokenChars}}.
{Operator}          : {token, {op, TokenLine, TokenChars}}.
{Space}             : skip_token.
{LeftParen}         : {token, {'(', TokenLine, TokenChars}}.
{RightParen}        : {token, {')', TokenLine, TokenChars}}.

Erlang code.