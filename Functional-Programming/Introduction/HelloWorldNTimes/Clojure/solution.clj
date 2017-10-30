(defn hello_word_n_times[n]
    ; Write your code here
    (dotimes [_ n] (println "Hello World")) (Integer. n)   
)


(def n (Integer/parseInt (read-line)))
(hello_word_n_times n)
