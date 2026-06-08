___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "TAG",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "ActiveCampaign Site Tracking by New North Digital",
  "categories": [
    "EMAIL_MARKETING",
    "MARKETING"
  ],
  "brand": {
    "id": "brand_dummy",
    "displayName": "New North Digital",
    "thumbnail": "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAGAAAABgCAMAAADVRocKAAAAeFBMVEUATP////8ASv8ARP8AR/8AQv8AQP/7/f8APv/o7/8AT//1+f+lvf/K2f8AUf/5+/+zx//a5P/h6v8/cv/S3/+UsP8AV/+Hpf9kjP+rwf+Oq/9fh/8fXf+guf9Jef9wlP+9zv8uaP8nYf9Sfv95mv9+n//D1P87bv92xvM5AAAC60lEQVRoge1Z2bKiQAyF9AIIIoggrrj7/384fR2FpMs7ZTXpmhfzqFV9+iQnS4cg+NrXvvYfDcDz+RVIrwB6WpyETxLxNJx30iMJAxCGxdYfiQdAmLTaF8JfAEMiV34gXgBh2movkegBDImTDxLxrQcIk07wk1DrEJkHErAtMULSSm4EeZpihHDFnhNyUs8wwnzD7SbQVUlJTBQvQiA1CbWJRMxPYkEgitxDJFLPkRB7QiLil5PIqZzKDTcCqDORU7RrBMOpQgzJK2BHYl3uR/cJEJcVqnEQn+cEopYjSajMnLKoYkSijoic9qNyAvKHOKN66Pug9jQSdT6CBDTRy9uD7mWzIyTKs3skeoAwRRc1OUEikdYT1040AJhInAcSoskIiUXlmNgY4IcEisSGkli6kXgG+Z3uVZ4RwU7vTiTknZZRpHvQNCdmV+VCQqo1bWiIhJ3Y06NLToCqSFeOdvk/SDhNZ3KypJEgcloROR2chn1DgkRihknIlpBIWqcibje0ct8fA2JLSMw6p8oB2mpov+dEcnLLOQFUToREU6B/Lo7FD7SdE8NNIW6T/ve189gk9RV5+3DEAAjcHcB4+/jKiQQ/DaVYI+R2TJOTwfWn3aTFcVCjGctwKs63o/q0Cei5a+/4+pM1kfAoAg8IiQcNELSSpBfeF4QEWkacO897Q0F/Kpd3KWBkS44vK9axHjS9flTzPkKltIr4ntf72mpDqPhxmC0eVPk4zBZPlHHM8YOZcuHzOWWuf8PHh1nD+qo12ifXTzasuyqIrdTNAl7vqyWdwkYM7m8M1N1ajHCLh2p/zrvaMXWfiod5YSsD2rbMAMdZGszEQr1/aFhzS+olmXDTjrnuWwupIudN3XxHtO84Pv9qwr4+87YftnT6Z1/1K9LWD0f2xaxGz7zk4uFLhR4ewzf+62OAtHN6BX8MwJy6NkB68XT8E8CP93uA5Bp4/MylM8ctyqcGlfMy61MEzx9Lv/a1r/HZH89xJtEqs4WUAAAAAElFTkSuQmCC"
  },
  "description": "ActiveCampaign Site Tracking (diffuser.js). Supports initialisation, visitor identification by email, custom event tracking, and manual page views for SPAs.",
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "SELECT",
    "name": "actionType",
    "displayName": "Action type",
    "macrosInSelect": false,
    "selectItems": [
      {
        "value": "init",
        "displayValue": "Initialisation"
      },
      {
        "value": "identify",
        "displayValue": "Identify visitor"
      },
      {
        "value": "track",
        "displayValue": "Track event"
      },
      {
        "value": "page",
        "displayValue": "Page view (SPA route change)"
      }
    ],
    "simpleValueType": true,
    "help": "Select the action this tag should perform. For a standard multi-page website only \u0027Initialisation\u0027 is needed (fire on All Pages — it records page views automatically). \u0027Identify visitor\u0027 and \u0027Track event\u0027 are optional event-level tags. \u0027Page view\u0027 is only needed for single-page apps where routes change without a full page reload."
  },
  {
    "type": "TEXT",
    "name": "accountId",
    "displayName": "Account ID",
    "simpleValueType": true,
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      }
    ],
    "help": "Your ActiveCampaign account ID (a numeric value). Find it under Settings \u003e Tracking \u003e Site Tracking in your ActiveCampaign account. For a standard multi-page website, fire this Initialisation tag on All Pages — page views are recorded automatically. For single-page apps, also add a Page view (SPA route change) tag on each route-change event.",
    "enablingConditions": [
      {
        "paramName": "actionType",
        "paramValue": "init",
        "type": "EQUALS"
      }
    ],
    "alwaysInSummary": true
  },
  {
    "type": "CHECKBOX",
    "name": "trackByDefault",
    "checkboxText": "Track page views by default",
    "simpleValueType": true,
    "defaultValue": true,
    "help": "When enabled, the tracker automatically records a page view on every page where the Initialisation tag fires.",
    "enablingConditions": [
      {
        "paramName": "actionType",
        "paramValue": "init",
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "TEXT",
    "name": "email",
    "displayName": "Visitor email",
    "simpleValueType": true,
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      }
    ],
    "help": "Email address used to identify the current visitor in ActiveCampaign. Once identified, future events and page views are attached to this contact.",
    "enablingConditions": [
      {
        "paramName": "actionType",
        "paramValue": "identify",
        "type": "EQUALS"
      }
    ],
    "alwaysInSummary": true
  },
  {
    "type": "TEXT",
    "name": "eventCategory",
    "displayName": "Event category",
    "simpleValueType": true,
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      }
    ],
    "help": "Category of the event (e.g., \u0027ecommerce\u0027, \u0027engagement\u0027).",
    "enablingConditions": [
      {
        "paramName": "actionType",
        "paramValue": "track",
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "TEXT",
    "name": "eventAction",
    "displayName": "Event action",
    "simpleValueType": true,
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      }
    ],
    "help": "Action of the event (e.g., \u0027add_to_cart\u0027, \u0027purchase\u0027, \u0027newsletter_signup\u0027).",
    "enablingConditions": [
      {
        "paramName": "actionType",
        "paramValue": "track",
        "type": "EQUALS"
      }
    ],
    "alwaysInSummary": true
  },
  {
    "type": "TEXT",
    "name": "eventLabel",
    "displayName": "Event label (optional)",
    "simpleValueType": true,
    "help": "Optional label that further describes the event (e.g., product name, form ID).",
    "enablingConditions": [
      {
        "paramName": "actionType",
        "paramValue": "track",
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "TEXT",
    "name": "eventValue",
    "displayName": "Event value (optional)",
    "simpleValueType": true,
    "help": "Optional numeric value for the event (e.g., order total).",
    "enablingConditions": [
      {
        "paramName": "actionType",
        "paramValue": "track",
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "debugGroup",
    "displayName": "Debugging",
    "groupStyle": "ZIPPY_CLOSED",
    "subParams": [
      {
        "type": "CHECKBOX",
        "name": "debug",
        "checkboxText": "Log to console for debugging",
        "simpleValueType": true
      }
    ]
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

const log = require('logToConsole');
const injectScript = require('injectScript');
const setInWindow = require('setInWindow');
const copyFromWindow = require('copyFromWindow');
const createArgumentsQueue = require('createArgumentsQueue');
const callInWindow = require('callInWindow');
const getType = require('getType');
const makeString = require('makeString');

const DIFFUSER_URL = 'https://diffuser-cdn.app-us1.com/diffuser/diffuser.js';
const VGO_ALIAS = 'vgo';

const actionType = data.actionType;
const enableDebug = data.debug;

const debugLog = (msg) => {
  if (enableDebug) {
    log('ActiveCampaign GTM - ' + msg);
  }
};

debugLog('Starting with action type: ' + actionType);

// Establish the ActiveCampaign command queue exactly as the native embed snippet does, BEFORE
// diffuser.js loads. The SDK constructs `new Diffuser(window.visitorGlobalObjectAlias)` on load
// and throws "Embed code is not configured" if window[alias] is undefined at that moment, so the
// queue-pushing stub must already exist. The SDK does not replace window[alias] (its instance
// lives at window.visitorGlobalObject), so commands are always pushed onto window.vgo.q and the
// SDK drains them on connect().
setInWindow('visitorGlobalObjectAlias', VGO_ALIAS, true);
if (getType(copyFromWindow(VGO_ALIAS)) !== 'function') {
  createArgumentsQueue(VGO_ALIAS, VGO_ALIAS + '.q');
}

let queued = true;

if (actionType === 'init') {
  if (!data.accountId) {
    debugLog('Error: Account ID is required for initialisation');
    queued = false;
  } else {
    callInWindow(VGO_ALIAS, 'setAccount', makeString(data.accountId));
    callInWindow(VGO_ALIAS, 'setTrackByDefault', data.trackByDefault !== false);
    callInWindow(VGO_ALIAS, 'process');
    debugLog('Queued init with account ID: ' + data.accountId);
  }
} else if (actionType === 'identify') {
  if (!data.email) {
    debugLog('Error: Visitor email is required for identify');
    queued = false;
  } else {
    callInWindow(VGO_ALIAS, 'setEmail', data.email);
    callInWindow(VGO_ALIAS, 'process');
    debugLog('Queued identify visitor');
  }
} else if (actionType === 'track') {
  if (!data.eventCategory || !data.eventAction) {
    debugLog('Error: Event category and action are required for track');
    queued = false;
  } else {
    const eventOpts = {
      category: data.eventCategory,
      action: data.eventAction
    };
    if (data.eventLabel) {
      eventOpts.label = data.eventLabel;
    }
    if (data.eventValue) {
      eventOpts.value = data.eventValue;
    }
    callInWindow(VGO_ALIAS, 'process', 'trackevent', eventOpts);
    debugLog('Queued event: ' + data.eventCategory + ' / ' + data.eventAction);
  }
} else if (actionType === 'page') {
  callInWindow(VGO_ALIAS, 'process');
  debugLog('Queued page view');
} else {
  debugLog('Unknown action type: ' + actionType);
  queued = false;
}

if (!queued) {
  data.gtmOnFailure();
} else {
  injectScript(DIFFUSER_URL, data.gtmOnSuccess, data.gtmOnFailure, 'ac-diffuser');
}


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "logging",
        "versionId": "1"
      },
      "param": [
        {
          "key": "environments",
          "value": {
            "type": 1,
            "string": "debug"
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "access_globals",
        "versionId": "1"
      },
      "param": [
        {
          "key": "keys",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "vgo"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "vgo.q"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "visitorGlobalObjectAlias"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "inject_script",
        "versionId": "1"
      },
      "param": [
        {
          "key": "urls",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "https://diffuser-cdn.app-us1.com/diffuser/diffuser.js"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  }
]


___TESTS___

scenarios:
- name: Init - loads SDK and calls setAccount
  code: |-
    const mockData = {
      actionType: 'init',
      accountId: '255304459',
      trackByDefault: true,
      debug: false
    };

    mock('injectScript', function(url, onSuccess, onFailure, cacheToken) {
      onSuccess();
    });

    runCode(mockData);

    assertApi('injectScript').wasCalled();
    assertApi('setInWindow').wasCalled();
    assertApi('callInWindow').wasCalled();
    assertApi('gtmOnSuccess').wasCalled();
- name: Init - creates vgo queue before injecting diffuser
  code: |-
    const getType = require('getType');
    const copyFromWindow = require('copyFromWindow');

    const mockData = {
      actionType: 'init',
      accountId: '255304459',
      trackByDefault: true,
      debug: false
    };

    let vgoDefinedAtInject = false;
    mock('injectScript', function(url, onSuccess, onFailure, cacheToken) {
      vgoDefinedAtInject = getType(copyFromWindow('vgo')) === 'function';
      onSuccess();
    });

    runCode(mockData);

    assertApi('createArgumentsQueue').wasCalled();
    assertThat(vgoDefinedAtInject).isEqualTo(true);
    assertApi('gtmOnSuccess').wasCalled();
- name: Init - fails without account ID
  code: |-
    const mockData = {
      actionType: 'init',
      accountId: '',
      trackByDefault: true,
      debug: false
    };

    mock('injectScript', function(url, onSuccess, onFailure, cacheToken) {
      onSuccess();
    });

    runCode(mockData);

    assertApi('gtmOnFailure').wasCalled();
- name: Identify - calls setEmail on vgo
  code: |-
    const mockData = {
      actionType: 'identify',
      email: 'jane@example.com',
      debug: false
    };

    mock('injectScript', function(url, onSuccess, onFailure, cacheToken) {
      onSuccess();
    });

    runCode(mockData);

    assertApi('callInWindow').wasCalled();
    assertApi('gtmOnSuccess').wasCalled();
- name: Identify - fails without email
  code: |-
    const mockData = {
      actionType: 'identify',
      email: '',
      debug: false
    };

    mock('injectScript', function(url, onSuccess, onFailure, cacheToken) {
      onSuccess();
    });

    runCode(mockData);

    assertApi('gtmOnFailure').wasCalled();
- name: Track - calls trackevent with category and action
  code: |-
    const mockData = {
      actionType: 'track',
      eventCategory: 'ecommerce',
      eventAction: 'purchase',
      eventLabel: 'Order 1234',
      eventValue: '99.95',
      debug: false
    };

    mock('injectScript', function(url, onSuccess, onFailure, cacheToken) {
      onSuccess();
    });

    runCode(mockData);

    assertApi('callInWindow').wasCalled();
    assertApi('gtmOnSuccess').wasCalled();
- name: Track - fails without category and action
  code: |-
    const mockData = {
      actionType: 'track',
      eventCategory: '',
      eventAction: '',
      debug: false
    };

    mock('injectScript', function(url, onSuccess, onFailure, cacheToken) {
      onSuccess();
    });

    runCode(mockData);

    assertApi('gtmOnFailure').wasCalled();
- name: Page view - calls process on vgo
  code: |-
    const mockData = {
      actionType: 'page',
      debug: false
    };

    mock('injectScript', function(url, onSuccess, onFailure, cacheToken) {
      onSuccess();
    });

    runCode(mockData);

    assertApi('callInWindow').wasCalled();
    assertApi('gtmOnSuccess').wasCalled();
- name: SDK failure - calls gtmOnFailure
  code: |-
    const mockData = {
      actionType: 'init',
      accountId: '255304459',
      trackByDefault: true,
      debug: false
    };

    mock('injectScript', function(url, onSuccess, onFailure, cacheToken) {
      onFailure();
    });

    runCode(mockData);

    assertApi('gtmOnFailure').wasCalled();


___NOTES___

Created on 2026-05-27 by New North Digital (newnorth.digital).


