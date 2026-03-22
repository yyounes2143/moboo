package com.tencent.vod.flutter;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class FTXEvent {
    public static final String ACTION_PIP_PLAY_CONTROL = "vodPlayControl";
    public static final int ERROR_PIP_ACTIVITY_DESTROYED = -103;
    public static final int ERROR_PIP_DENIED_PERMISSION = -102;
    public static final int ERROR_PIP_FEATURE_NOT_SUPPORT = -104;
    public static final int ERROR_PIP_IN_BUSY = -110;
    public static final int ERROR_PIP_LOWER_VERSION = -101;
    public static final int ERROR_PIP_MISS_PLAYER = -109;
    public static final int EVENT_AUDIO_FOCUS_PAUSE = 2;
    public static final int EVENT_AUDIO_FOCUS_PLAY = 3;
    public static final int EVENT_BRIGHTNESS_CHANGED = 4;
    public static final int EVENT_DOWNLOAD_ERROR = 305;
    public static final int EVENT_DOWNLOAD_FINISH = 304;
    public static final int EVENT_DOWNLOAD_PROGRESS = 302;
    public static final int EVENT_DOWNLOAD_START = 301;
    public static final int EVENT_DOWNLOAD_STOP = 303;
    public static final String EVENT_ERR_CODE = "errCode";
    public static final String EVENT_ERR_MSG = "errMsg";
    public static final String EVENT_HOST_NAME = "hostName";
    public static final String EVENT_IPS = "ips";
    public static final String EVENT_LOG_LEVEL = "logLevel";
    public static final String EVENT_LOG_MODULE = "logModule";
    public static final String EVENT_LOG_MSG = "logMsg";
    public static final int EVENT_ON_CUSTOM_HTTP_DNS = 504;
    public static final int EVENT_ON_LICENCE_LOADED = 503;
    public static final int EVENT_ON_LOG = 501;
    public static final int EVENT_ON_UPDATE_NETWORK_TIME = 502;
    public static final int EVENT_ORIENTATION_CHANGED = 401;
    public static final String EVENT_PIP_ACTION = "com.tencent.flutter.pipevent";
    public static final int EVENT_PIP_MODE_ALREADY_ENTER = 1;
    public static final int EVENT_PIP_MODE_ALREADY_EXIT = 2;
    public static final String EVENT_PIP_MODE_NAME = "pipEventName";
    public static final int EVENT_PIP_MODE_REQUEST_START = 3;
    public static final int EVENT_PIP_MODE_RESTORE_UI = 5;
    public static final int EVENT_PIP_MODE_UI_STATE_CHANGED = 4;
    public static final String EVENT_PIP_PLAYER_EVENT_ACTION = "com.tencent.flutter.pipplayerevent";
    public static final String EVENT_PIP_PLAY_TIME = "playTime";
    public static final int EVENT_PREDOWNLOAD_ON_COMPLETE = 200;
    public static final int EVENT_PREDOWNLOAD_ON_ERROR = 201;
    public static final int EVENT_PREDOWNLOAD_ON_START = 202;
    public static final String EVENT_REASON = "reason";
    public static final String EVENT_RESULT = "result";
    public static final int EVENT_SUBTITLE_DATA = 601;
    public static final int EVENT_VOLUME_CHANGED = 1;
    public static final String EVT_KEY_PLAYER_EVENT = "event";
    public static final String EVT_KEY_PLAYER_HEIGHT = "EVT_HEIGHT";
    public static final String EVT_KEY_PLAYER_WIDTH = "EVT_WIDTH";
    public static final String EXTRA_NAME_IS_PLAYING = "isPlaying";
    public static final String EXTRA_NAME_ORIENTATION = "orientation";
    public static final String EXTRA_NAME_PARAMS = "pipParams";
    public static final String EXTRA_NAME_PIP_PLAYER_EVENT_ID = "pipPlayerEventId";
    public static final String EXTRA_NAME_PIP_PLAYER_EVENT_PARAMS = "pipPlayerEventParams";
    public static final String EXTRA_NAME_PLAYER_ID = "vodPlayerId";
    public static final String EXTRA_NAME_PLAY_OP = "vodPlayOp";
    public static final String EXTRA_NAME_RESULT = "pipResult";
    public static final int EXTRA_PIP_PLAY_BACK = 101;
    public static final int EXTRA_PIP_PLAY_FORWARD = 103;
    public static final int EXTRA_PIP_PLAY_RESUME_OR_PAUSE = 102;
    public static final String EXTRA_SUBTITLE_DATA = "subtitleData";
    public static final String EXTRA_SUBTITLE_DURATION_MS = "durationMs";
    public static final String EXTRA_SUBTITLE_START_POSITION_MS = "startPositionMs";
    public static final String EXTRA_SUBTITLE_TRACK_INDEX = "trackIndex";
    public static final String FTX_RENDER_VIEW = "FTXRenderViewType";
    public static final int NO_ERROR = 0;
    public static final int ORIENTATION_LANDSCAPE_LEFT = 414;
    public static final int ORIENTATION_LANDSCAPE_RIGHT = 412;
    public static final int ORIENTATION_PORTRAIT_DOWN = 413;
    public static final int ORIENTATION_PORTRAIT_UP = 411;
    public static final String PIP_ACTION_DO_EXIT = "com.tencent.flutter.doExitPip";
    public static final String PIP_ACTION_EXIT = "com.tencent.flutter.exitPip";
    public static final String PIP_ACTION_START = "com.tencent.flutter.startPip";
    public static final String PIP_ACTION_UPDATE = "com.tencent.flutter.updatePip";
    public static final String PIP_CHANNEL_NAME = "cloud.tencent.com/playerPlugin/componentEvent";
    public static final int PLAYER_LIVE = 2;
    public static final int PLAYER_VOD = 1;
    public static final String RENDER_TYPE_KEY = "renderViewType";

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public interface TUINetConst {
        public static final String NET_STATUS_AUDIO_BITRATE = "AUDIO_BITRATE";
        public static final String NET_STATUS_AUDIO_BLOCK_RATE = "AUDIO_BLOCK_RATE";
        public static final String NET_STATUS_AUDIO_CACHE = "AUDIO_CACHE";
        public static final String NET_STATUS_AUDIO_INFO = "AUDIO_PLAY_INFO";
        public static final String NET_STATUS_AUDIO_LOSS = "AUDIO_PACKET_LOSS";
        public static final String NET_STATUS_AUDIO_TOTAL_BLOCK_TIME = "AUDIO_TOTAL_BLOCK_TIME";
        public static final String NET_STATUS_CPU_USAGE = "CPU_USAGE";
        public static final String NET_STATUS_NET_JITTER = "NET_JITTER";
        public static final String NET_STATUS_NET_SPEED = "NET_SPEED";
        public static final String NET_STATUS_QUALITY_LEVEL = "NET_QUALITY_LEVEL";
        public static final String NET_STATUS_RTT = "RTT";
        public static final String NET_STATUS_SERVER_IP = "SERVER_IP";
        public static final String NET_STATUS_SYSTEM_CPU = "SYSTEM_CPU";
        public static final String NET_STATUS_VIDEO_BITRATE = "VIDEO_BITRATE";
        public static final String NET_STATUS_VIDEO_BLOCK_RATE = "VIDEO_BLOCK_RATE";
        public static final String NET_STATUS_VIDEO_CACHE = "VIDEO_CACHE";
        public static final String NET_STATUS_VIDEO_DPS = "VIDEO_DPS";
        public static final String NET_STATUS_VIDEO_FPS = "VIDEO_FPS";
        public static final String NET_STATUS_VIDEO_GOP = "VIDEO_GOP";
        public static final String NET_STATUS_VIDEO_HEIGHT = "VIDEO_HEIGHT";
        public static final String NET_STATUS_VIDEO_LOSS = "VIDEO_PACKET_LOSS";
        public static final String NET_STATUS_VIDEO_TOTAL_BLOCK_TIME = "VIDEO_TOTAL_BLOCK_TIME";
        public static final String NET_STATUS_VIDEO_WIDTH = "VIDEO_WIDTH";
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public interface ViewType {
        public static final int DRM_SURFACE_TYPE = 2;
        public static final int SURFACE_TYPE = 1;
        public static final int TEXTURE_TYPE = 0;
    }
}
