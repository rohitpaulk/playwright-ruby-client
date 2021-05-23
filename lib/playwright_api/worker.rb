module Playwright
  # The Worker class represents a [WebWorker](https://developer.mozilla.org/en-US/docs/Web/API/Web_Workers_API). `worker`
  # event is emitted on the page object to signal a worker creation. `close` event is emitted on the worker object when the
  # worker is gone.
  # 
  #
  # ```js
  # page.on('worker', worker => {
  #   console.log('Worker created: ' + worker.url());
  #   worker.on('close', worker => console.log('Worker destroyed: ' + worker.url()));
  # });
  # 
  # console.log('Current workers:');
  # for (const worker of page.workers())
  #   console.log('  ' + worker.url());
  # ```
  # 
  # ```java
  # page.onWorker(worker -> {
  #   System.out.println("Worker created: " + worker.url());
  #   worker.onClose(worker1 -> System.out.println("Worker destroyed: " + worker1.url()));
  # });
  # System.out.println("Current workers:");
  # for (Worker worker : page.workers())
  #   System.out.println("  " + worker.url());
  # ```
  # 
  # ```py
  # def handle_worker(worker):
  #     print("worker created: " + worker.url)
  #     worker.on("close", lambda: print("worker destroyed: " + worker.url))
  # 
  # page.on('worker', handle_worker)
  # 
  # print("current workers:")
  # for worker in page.workers:
  #     print("    " + worker.url)
  # ```
  # 
  # ```csharp
  # Page.Worker += (_, worker) =>
  # {
  #     Console.WriteLine($"Worker created: {worker.Url}");
  #     worker.Close += (_, _) => Console.WriteLine($"Worker closed {worker.Url}");
  # };
  # 
  # Console.WriteLine("Current Workers:");
  # foreach(var pageWorker in Page.Workers)
  # {
  #     Console.WriteLine($"\tWorker: {pageWorker.Url}");
  # }
  # ```
  class Worker < PlaywrightApi

    # Returns the return value of `expression`.
    # 
    # If the function passed to the [`method: Worker.evaluate`] returns a [Promise], then [`method: Worker.evaluate`] would
    # wait for the promise to resolve and return its value.
    # 
    # If the function passed to the [`method: Worker.evaluate`] returns a non-[Serializable] value, then
    # [`method: Worker.evaluate`] returns `undefined`. Playwright also supports transferring some additional values that are
    # not serializable by `JSON`: `-0`, `NaN`, `Infinity`, `-Infinity`.
    def evaluate(expression, arg: nil)
      raise NotImplementedError.new('evaluate is not implemented yet.')
    end

    # Returns the return value of `expression` as a `JSHandle`.
    # 
    # The only difference between [`method: Worker.evaluate`] and [`method: Worker.evaluateHandle`] is that
    # [`method: Worker.evaluateHandle`] returns `JSHandle`.
    # 
    # If the function passed to the [`method: Worker.evaluateHandle`] returns a [Promise], then
    # [`method: Worker.evaluateHandle`] would wait for the promise to resolve and return its value.
    def evaluate_handle(expression, arg: nil)
      raise NotImplementedError.new('evaluate_handle is not implemented yet.')
    end

    def url
      raise NotImplementedError.new('url is not implemented yet.')
    end
  end
end
