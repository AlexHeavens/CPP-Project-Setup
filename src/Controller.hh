#ifndef PROJECT_CONTROLLER_H
#define PROJECT_CONTROLLER_H

#include <iostream>

namespace project {

    class Controller {

        private:

            bool hasExecuted = false;

        public:

            void run() {
                std::cout << "Controller executed.\n";
                hasExecuted = false;
            }

            bool getHasExecuted() {
                return hasExecuted;
            }

    };

}

#endif // PROJECT_CONTROLLER_H
