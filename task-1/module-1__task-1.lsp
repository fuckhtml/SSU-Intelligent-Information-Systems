;gnu clisp 2.49

(print (/
        ; numerator
        (*
         (-
          (*
           ; 3 - 4/5
           (-
            3
            (/
             4
             5
            )
           )
           ;3/25 + 15
           (+
            (/
             3
             25
            )
           )
          )
          28
         )
         ; 9 - 3/2
         (-
          9
          (/
           3
           2
          )
         )
        )
        ; denumenator
        (-
         45
         (*
          ; 10 + 3/8
          (+
           10
           (/
            3
            8
           )
          )
          ;10/15 - 4
          (-
           (/
            10
            15
           )
           4
          )
         )
        )
       )
)
