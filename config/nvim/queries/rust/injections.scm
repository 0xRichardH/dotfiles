; Inject into sqlx::query!(r#"..."#, ...) as sql
(macro_invocation
 (scoped_identifier
    path: (identifier) @_path (#eq? @_path "sqlx")
    name: (identifier) @_name (#eq? @_name "query"))

 (token_tree
   (raw_string_literal) @sql)
   (#offset! @sql 1 0 0 0))

; Inject into sqlx::query(r#"..."#) as sql
(call_expression
  (scoped_identifier
    path: (identifier) @path (#eq? @path "sqlx")
    name: (identifier) @name (#eq? @name "query"))

   (arguments (raw_string_literal) @sql)
   (#offset! @sql 1 0 0 0))
