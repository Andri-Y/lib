var pluginsConfig = {
    Crop: {
        controlsCss: {
            width: '15px',
            height: '15px',
            background: 'white',
            border: '1px solid black'
        },
        controlsTouchCss: {
            width: '25px',
            height: '25px',
            background: 'white',
            border: '2px solid black'
        }
    },
    Rotate: {
        controlsCss: {
            width: '15px',
            height: '15px',
            background: 'white',
            border: '1px solid black'
        },
        controlsTouchCss: {
            width: '25px',
            height: '25px',
            background: 'white',
            border: '2px solid black'
        }
    },
    Resize: {
        controlsCss: {
            width: '15px',
            height: '15px',
            background: 'white',
            border: '1px solid black'
        },
        controlsTouchCss: {
            width: '25px',
            height: '25px',
            background: 'white',
            border: '2px solid black'
        }
    }
};

var imagerOptions = {
    plugins: ['Rotate', 'Crop', 'Resize', 'Toolbar', 'Save', 'Delete'],
    waitingCursor: 'wait', // for predefined css cursors
    editModeCss: {
        border: '2px solid red',
        background: 'url(../assets/transparent.png)'
    },
    pluginsConfig: pluginsConfig,
    quality: {
        sizes: [
            { label: 'Original', scale: 1, quality: 1, percentage: 100 },
            { label: 'Large', scale: 0.5, quality: 0.5, percentage: 50 },
            { label: 'Medium', scale: 0.2, quality: 0.2, percentage: 20 },
            { label: 'Small', scale: 0.05, quality: 0.05, percentage: 5 }
        ],
        allowCustomSetting: false
    }
};
var redactorConfig = {
    plugins: ['ImagerJs'],
    ImagerJs: {
        contentConfig: {
            saveImageData: function (imageId, imageData) {
                try {
                    localStorage.setItem('image_' + imageId, imageData);
                } catch (err) {
                    console.error(err);
                }
            },
            loadImageData: function (imageId) {
                return localStorage.getItem('image_' + imageId);
            }
        },
        hideFileSelection: true,
        quality: {
            sizes: [
                { label: 'Original', scale: 1, quality: 1, percentage: 100 },
                { label: 'Large', scale: 0.5, quality: 0.5, percentage: 50 },
                { label: 'Medium', scale: 0.2, quality: 0.2, percentage: 20 },
                { label: 'Small', scale: 0.05, quality: 0.05, percentage: 5 }
            ]
        },
        // here we use the same options config. It is possible and suggested to use
        // separate configs to get a different appearance of ImagerJs when initially
        // selecting an image from file or when selecting an image inside of redactor
        redactor: imagerOptions,
        preview: imagerOptions
    }
};