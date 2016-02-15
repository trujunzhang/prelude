'(rose violet daisy buttercup)



(message "djzhang")

'(this list has (a list inside of it))


(+ 2 20)

'(djzhang list includes "text between quotation marks")


(+ 2 (+ 3 3))



(concat "The " (number-to-string (+ 2 fill-column))  " red foxes.")

(message "The name of this buffer is: %s."  (buffer-name))

(set 'flowers '(rose voilet daisy buttercup))

(setq tree '(pine fir oak maple)
      herbivores '(gazelle antelope zebra))


(setq counter 20)


(switch-to-buffer (next-buffer))


(buffer-size)



(point)


(defun printName (name)
  "optional-ducumentation.."
  (message "Print %s." (name))
  )


(defun multiply-by-seven (number)
  "Multiply NUMBER by seven."
  (* 7 number)
  )


;;printName("djzhang")


;;(printName "djzhang")


(multiply-by-seven 3)

(require 'w3m)

