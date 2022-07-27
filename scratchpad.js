// var Singleton = (function () {
//     var instance;

//     function createInstance() {
//         var object = new Object("I am the instance");
//         return object;
//     }

//     return {
//         getInstance: function () {
//             if (!instance) {
//                 instance = createInstance();
//             }
//             return instance;
//         },
//         output: function(){
//             console.log('hi')
//         }
//     };
// })();

// function run() {

//     // var instance1 = Singleton.getInstance();
//     // var instance2 = Singleton.getInstance();

//     // console.log("Same instance? " + (instance1 === instance2));

//     console.log(Singleton.output())
// }

// run()


// function largestIndex(...args) {
//   let largeNum = args[0]
//   let largeIndex = 0

//   args.forEach((num, i) => {

//   })
// }

// let car = function(model) {
//     this.model = model
// }

// car.protoype.getModel = function (){
//     return this.model
// }

// new car('nissan').getModel()

// // function declaration vs function expression


// h = {a:1, b:2}
// h.forEach((x,y) => {
//     console.log(x)
//     console.log(y)
// })


// for (var key in dictionary) {
//     // check if the property/key is defined in the object itself, not in parent
//     if (dictionary.hasOwnProperty(key)) {           
//         console.log(key, dictionary[key]);
//     }
// }

// const obj = {
//     a:1,
//     b:2,
//     getA() {
//       return this
//     },
//     getB(){

//     }
// }



// let getApi = () => {
//   fetch('http://example.com/movies.json')
//     .then((response) => response.json())
//     .then((data) => console.log(data))
//     .catch((error) => console.log('error'));
// }

// getApi();


// <script>
//   const helperPromise = function () {
//     const promise = new Promise(function (resolve, reject) {
//       const x = "geeksforgeeks";
//       const y = "geeksforgeeks";
//       if (x === y) {
//         resolve("Strings are same");
//       } else {
//         reject("Strings are not same");
//       }
//     });
 
//     return promise;
//   };
 
//   async function demoPromise() {
//     try {
//       let message = await helperPromise();
//       console.log(message);
//     } catch (error) {
//       console.log("Error: " + error);
//     }
//   }
 
//   demoPromise();
// </script>

var addTo = (passed) => {
  var add = (inner) => {
    return passed + inner
  }

  return add
}

console.log(addTo(3).add(3))