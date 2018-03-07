#import <Foundation/Foundation.h>

#include <xpc/xpc.h>

#include "main.h"

void handle()
{
	dispatch_semaphore_t semaphore = dispatch_semaphore_create(0);
    xpc_set_event_stream_handler("com.apple.iokit.matching", NULL, ^(xpc_object_t _Nonnull object) {
        const char *event = xpc_dictionary_get_string(object, XPC_EVENT_KEY_NAME);
        NSLog(@"%s", event);
        dispatch_semaphore_signal(semaphore);
    });
    dispatch_semaphore_wait(semaphore, DISPATCH_TIME_FOREVER);	
}