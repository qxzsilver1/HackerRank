(let [num (read) f (fn [idx item] (when (even? idx) item))]
  (dotimes [x num]
    (let [s (str (read))]
      (println (str (apply str (keep-indexed f s)) " " (apply str (keep-indexed f (next s))))))))
