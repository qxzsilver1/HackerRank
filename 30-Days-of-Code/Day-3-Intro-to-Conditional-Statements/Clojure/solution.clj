(use '[clojure.string :only (split triml)])

(
        let [
          N_t (read-line) 
          N (Integer/parseInt N_t) 
        ]
        
        (if (== (mod N 2) 1) 
            (println "Weird") 
            (if (and (>= N 6) (<= N 20)) 
                (println "Weird") (println "Not Weird")))

)
