#ifndef RIL_INTERFACE_H
#define RIL_INTERFACE_H

#include <telephony/ril.h>
#include "secril-client.h"

struct ril_handle
{
    void *client;
    int volume_steps_max;
};


/* Function prototypes */
int ril_open(struct ril_handle *ril);

int ril_close(struct ril_handle *ril);

int ril_set_call_volume(struct ril_handle *ril,
                        enum _SoundType sound_type,
                        float volume);

int ril_set_call_audio_path(struct ril_handle *ril,
                            enum _AudioPath path);

int ril_set_call_clock_sync(struct ril_handle *ril,
                            enum _SoundClockCondition condition);

int ril_set_mute(struct ril_handle *ril, enum _MuteCondition condition);

int ril_set_two_mic_control(struct ril_handle *ril,
                            enum __TwoMicSolDevice device,
                            enum __TwoMicSolReport report);

void ril_register_set_wb_amr_callback(void *function, void *data);

#endif
