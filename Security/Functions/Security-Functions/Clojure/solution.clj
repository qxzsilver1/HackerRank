(use '[clojure.string :only (split triml)])

(
    let [
      x_t (read-line) 
      x (Integer/parseInt x_t) 
    ]

    (println (rem x 11))
)
