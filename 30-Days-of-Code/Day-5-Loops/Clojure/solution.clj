(use '[clojure.string :only (split triml)])

(
        let [
          n_t (read-line) 
          n (Integer/parseInt n_t) 
        ]
        
        (loop [i 1]
            (when (<= i 10)
                (println n "x" i "=" (* n i))
                (recur (inc i))))

)
