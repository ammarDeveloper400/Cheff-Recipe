import { BehaviorSubject } from 'rxjs';

const darkTheme = new BehaviorSubject(false);

const DarkTheme = {
    switch: function(t){
        darkTheme.next(t)
    }
}


export {
    darkTheme,
    DarkTheme
}