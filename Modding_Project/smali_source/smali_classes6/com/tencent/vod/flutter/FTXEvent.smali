.class public Lcom/tencent/vod/flutter/FTXEvent;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/vod/flutter/FTXEvent$TUINetConst;,
        Lcom/tencent/vod/flutter/FTXEvent$ViewType;
    }
.end annotation


# static fields
.field public static final ACTION_PIP_PLAY_CONTROL:Ljava/lang/String; = "vodPlayControl"

.field public static final ERROR_PIP_ACTIVITY_DESTROYED:I = -0x67

.field public static final ERROR_PIP_DENIED_PERMISSION:I = -0x66

.field public static final ERROR_PIP_FEATURE_NOT_SUPPORT:I = -0x68

.field public static final ERROR_PIP_IN_BUSY:I = -0x6e

.field public static final ERROR_PIP_LOWER_VERSION:I = -0x65

.field public static final ERROR_PIP_MISS_PLAYER:I = -0x6d

.field public static final EVENT_AUDIO_FOCUS_PAUSE:I = 0x2

.field public static final EVENT_AUDIO_FOCUS_PLAY:I = 0x3

.field public static final EVENT_BRIGHTNESS_CHANGED:I = 0x4

.field public static final EVENT_DOWNLOAD_ERROR:I = 0x131

.field public static final EVENT_DOWNLOAD_FINISH:I = 0x130

.field public static final EVENT_DOWNLOAD_PROGRESS:I = 0x12e

.field public static final EVENT_DOWNLOAD_START:I = 0x12d

.field public static final EVENT_DOWNLOAD_STOP:I = 0x12f

.field public static final EVENT_ERR_CODE:Ljava/lang/String; = "errCode"

.field public static final EVENT_ERR_MSG:Ljava/lang/String; = "errMsg"

.field public static final EVENT_HOST_NAME:Ljava/lang/String; = "hostName"

.field public static final EVENT_IPS:Ljava/lang/String; = "ips"

.field public static final EVENT_LOG_LEVEL:Ljava/lang/String; = "logLevel"

.field public static final EVENT_LOG_MODULE:Ljava/lang/String; = "logModule"

.field public static final EVENT_LOG_MSG:Ljava/lang/String; = "logMsg"

.field public static final EVENT_ON_CUSTOM_HTTP_DNS:I = 0x1f8

.field public static final EVENT_ON_LICENCE_LOADED:I = 0x1f7

.field public static final EVENT_ON_LOG:I = 0x1f5

.field public static final EVENT_ON_UPDATE_NETWORK_TIME:I = 0x1f6

.field public static final EVENT_ORIENTATION_CHANGED:I = 0x191

.field public static final EVENT_PIP_ACTION:Ljava/lang/String; = "com.tencent.flutter.pipevent"

.field public static final EVENT_PIP_MODE_ALREADY_ENTER:I = 0x1

.field public static final EVENT_PIP_MODE_ALREADY_EXIT:I = 0x2

.field public static final EVENT_PIP_MODE_NAME:Ljava/lang/String; = "pipEventName"

.field public static final EVENT_PIP_MODE_REQUEST_START:I = 0x3

.field public static final EVENT_PIP_MODE_RESTORE_UI:I = 0x5

.field public static final EVENT_PIP_MODE_UI_STATE_CHANGED:I = 0x4

.field public static final EVENT_PIP_PLAYER_EVENT_ACTION:Ljava/lang/String; = "com.tencent.flutter.pipplayerevent"

.field public static final EVENT_PIP_PLAY_TIME:Ljava/lang/String; = "playTime"

.field public static final EVENT_PREDOWNLOAD_ON_COMPLETE:I = 0xc8

.field public static final EVENT_PREDOWNLOAD_ON_ERROR:I = 0xc9

.field public static final EVENT_PREDOWNLOAD_ON_START:I = 0xca

.field public static final EVENT_REASON:Ljava/lang/String; = "reason"

.field public static final EVENT_RESULT:Ljava/lang/String; = "result"

.field public static final EVENT_SUBTITLE_DATA:I = 0x259

.field public static final EVENT_VOLUME_CHANGED:I = 0x1

.field public static final EVT_KEY_PLAYER_EVENT:Ljava/lang/String; = "event"

.field public static final EVT_KEY_PLAYER_HEIGHT:Ljava/lang/String; = "EVT_HEIGHT"

.field public static final EVT_KEY_PLAYER_WIDTH:Ljava/lang/String; = "EVT_WIDTH"

.field public static final EXTRA_NAME_IS_PLAYING:Ljava/lang/String; = "isPlaying"

.field public static final EXTRA_NAME_ORIENTATION:Ljava/lang/String; = "orientation"

.field public static final EXTRA_NAME_PARAMS:Ljava/lang/String; = "pipParams"

.field public static final EXTRA_NAME_PIP_PLAYER_EVENT_ID:Ljava/lang/String; = "pipPlayerEventId"

.field public static final EXTRA_NAME_PIP_PLAYER_EVENT_PARAMS:Ljava/lang/String; = "pipPlayerEventParams"

.field public static final EXTRA_NAME_PLAYER_ID:Ljava/lang/String; = "vodPlayerId"

.field public static final EXTRA_NAME_PLAY_OP:Ljava/lang/String; = "vodPlayOp"

.field public static final EXTRA_NAME_RESULT:Ljava/lang/String; = "pipResult"

.field public static final EXTRA_PIP_PLAY_BACK:I = 0x65

.field public static final EXTRA_PIP_PLAY_FORWARD:I = 0x67

.field public static final EXTRA_PIP_PLAY_RESUME_OR_PAUSE:I = 0x66

.field public static final EXTRA_SUBTITLE_DATA:Ljava/lang/String; = "subtitleData"

.field public static final EXTRA_SUBTITLE_DURATION_MS:Ljava/lang/String; = "durationMs"

.field public static final EXTRA_SUBTITLE_START_POSITION_MS:Ljava/lang/String; = "startPositionMs"

.field public static final EXTRA_SUBTITLE_TRACK_INDEX:Ljava/lang/String; = "trackIndex"

.field public static final FTX_RENDER_VIEW:Ljava/lang/String; = "FTXRenderViewType"

.field public static final NO_ERROR:I = 0x0

.field public static final ORIENTATION_LANDSCAPE_LEFT:I = 0x19e

.field public static final ORIENTATION_LANDSCAPE_RIGHT:I = 0x19c

.field public static final ORIENTATION_PORTRAIT_DOWN:I = 0x19d

.field public static final ORIENTATION_PORTRAIT_UP:I = 0x19b

.field public static final PIP_ACTION_DO_EXIT:Ljava/lang/String; = "com.tencent.flutter.doExitPip"

.field public static final PIP_ACTION_EXIT:Ljava/lang/String; = "com.tencent.flutter.exitPip"

.field public static final PIP_ACTION_START:Ljava/lang/String; = "com.tencent.flutter.startPip"

.field public static final PIP_ACTION_UPDATE:Ljava/lang/String; = "com.tencent.flutter.updatePip"

.field public static final PIP_CHANNEL_NAME:Ljava/lang/String; = "cloud.tencent.com/playerPlugin/componentEvent"

.field public static final PLAYER_LIVE:I = 0x2

.field public static final PLAYER_VOD:I = 0x1

.field public static final RENDER_TYPE_KEY:Ljava/lang/String; = "renderViewType"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
