module.exports = {
    
    routes: [
        { // Path defined with an URL parameter
            method: 'GET',
            path: '/recipessearch',
            handler: 'recipe.searchai',
        },
        { // Path defined with an URL parameter
            method: 'PUT',
            path: '/updateprofile',
            handler: 'recipe.updateprofile',
        },
        { // Path defined with an URL parameter
            method: 'PUT',
            path: '/deletemyaccount',
            handler: 'recipe.deletemyaccount',
        },
        { // Path defined with an URL parameter
            method: 'GET',
            path: '/deletemyaccount2',
            handler: 'recipe.deletemyaccount2',
        },
        { // Path defined with an URL parameter
            method: 'POST',
            path: '/deletemyaccount3',
            handler: 'recipe.deletemyaccount3',
        },

        
    ]
}