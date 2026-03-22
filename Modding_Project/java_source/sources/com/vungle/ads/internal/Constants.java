package com.vungle.ads.internal;

import kotlin.Metadata;
import kotlin.jvm.JvmField;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b#\n\u0002\u0010\b\n\u0002\b\u0004\bÀ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u000bX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u000bX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0010\u0010\u0018\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0010\u0010\u0019\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010'\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010)\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010*\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010+\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010,\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010-\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010.\u001a\u00020/X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00100\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00101\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00102\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u00063"}, d2 = {"Lcom/vungle/ads/internal/Constants;", "", "()V", "AD_CLOSE", "", "AD_DURATION_KEY", "AD_INDEX_FILE_NAME", "AD_LOAD_DURATION", "AD_LOAD_DURATION_KEY", "AD_MRAID_JS_FILE_NAME", "AD_VIEWED_NOT_FIRED", "", "AD_VISIBILITY_INVISIBLE", "AD_VISIBILITY_VISIBLE", "AD_VISIBILITY_VISIBLE_LATER", "BOTH_NOT_FIRED", "CHECKPOINT_0", "CLICK_URL", "COORDINATE", "CP_0_NOT_FIRED", "CTA_URL", "DEEPLINK_CLICK", "DEEPLINK_SUCCESS_KEY", "DEFAULT_ADS_ENDPOINT", "DEFAULT_ERROR_LOGS_ENDPOINT", "DEFAULT_METRICS_ENDPOINT", "DEVICE_VOLUME_KEY", "IMPRESSION", "KEY_MAIN_VIDEO", "LOAD_AD", "MRAID_JS_FILE_NAME", "NETWORK_OPERATOR_KEY", "PLACEMENT_TYPE_APP_OPEN", "PLACEMENT_TYPE_BANNER", "PLACEMENT_TYPE_INTERSTITIAL", "PLACEMENT_TYPE_IN_LINE", "PLACEMENT_TYPE_MREC", "PLACEMENT_TYPE_NATIVE", "PLACEMENT_TYPE_REWARDED", "REMOTE_PLAY_KEY", "SESSION_ID", "TEMPLATE_TYPE_BANNER", "TEMPLATE_TYPE_FULLSCREEN", "TEMPLATE_TYPE_IN_LINE", "TEMPLATE_TYPE_MREC", "TEMPLATE_TYPE_NATIVE", "TIMEOUT", "", "VIDEO_LENGTH_KEY", "VIDEO_LENGTH_TPAT", "WIN_NOTIFICATION", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes6.dex */
public final class Constants {
    @NotNull
    public static final String AD_CLOSE = "ad.close";
    @NotNull
    public static final String AD_DURATION_KEY = "{{{dur}}}";
    @NotNull
    public static final String AD_INDEX_FILE_NAME = "index.html";
    @NotNull
    public static final String AD_LOAD_DURATION = "ad.loadDuration";
    @NotNull
    public static final String AD_LOAD_DURATION_KEY = "{{{time_dl}}}";
    @NotNull
    public static final String AD_MRAID_JS_FILE_NAME = "mraid.js";
    public static final long AD_VIEWED_NOT_FIRED = 2;
    @NotNull
    public static final String AD_VISIBILITY_INVISIBLE = "1";
    @NotNull
    public static final String AD_VISIBILITY_VISIBLE = "2";
    @NotNull
    public static final String AD_VISIBILITY_VISIBLE_LATER = "3";
    public static final long BOTH_NOT_FIRED = 3;
    @NotNull
    public static final String CHECKPOINT_0 = "checkpoint.0";
    @NotNull
    public static final String CLICK_URL = "clickUrl";
    @NotNull
    public static final String COORDINATE = "coordinate";
    public static final long CP_0_NOT_FIRED = 1;
    @NotNull
    public static final String CTA_URL = "cta_url";
    @NotNull
    public static final String DEEPLINK_CLICK = "deeplink.click";
    @NotNull
    public static final String DEEPLINK_SUCCESS_KEY = "{{{is_success}}}";
    @NotNull
    public static final String DEVICE_VOLUME_KEY = "{{{vol}}}";
    @NotNull
    public static final String IMPRESSION = "impression";
    @NotNull
    public static final String KEY_MAIN_VIDEO = "MAIN_VIDEO";
    @NotNull
    public static final String LOAD_AD = "load_ad";
    @NotNull
    public static final String MRAID_JS_FILE_NAME = "mraid.min.js";
    @NotNull
    public static final String NETWORK_OPERATOR_KEY = "{{{carrier}}}";
    @NotNull
    public static final String PLACEMENT_TYPE_APP_OPEN = "appopen";
    @NotNull
    public static final String PLACEMENT_TYPE_BANNER = "banner";
    @NotNull
    public static final String PLACEMENT_TYPE_INTERSTITIAL = "interstitial";
    @NotNull
    public static final String PLACEMENT_TYPE_IN_LINE = "in_line";
    @NotNull
    public static final String PLACEMENT_TYPE_MREC = "mrec";
    @NotNull
    public static final String PLACEMENT_TYPE_NATIVE = "native";
    @NotNull
    public static final String PLACEMENT_TYPE_REWARDED = "rewarded";
    @NotNull
    public static final String REMOTE_PLAY_KEY = "{{{remote_play}}}";
    @NotNull
    public static final String SESSION_ID = "{{{session_id}}}";
    @NotNull
    public static final String TEMPLATE_TYPE_BANNER = "banner";
    @NotNull
    public static final String TEMPLATE_TYPE_FULLSCREEN = "fullscreen";
    @NotNull
    public static final String TEMPLATE_TYPE_IN_LINE = "in_line";
    @NotNull
    public static final String TEMPLATE_TYPE_MREC = "mrec";
    @NotNull
    public static final String TEMPLATE_TYPE_NATIVE = "native";
    public static final int TIMEOUT = 60;
    @NotNull
    public static final String VIDEO_LENGTH_KEY = "{{{vlen}}}";
    @NotNull
    public static final String VIDEO_LENGTH_TPAT = "video.length";
    @NotNull
    public static final String WIN_NOTIFICATION = "win-notification";
    @NotNull
    public static final Constants INSTANCE = new Constants();
    @JvmField
    @NotNull
    public static final String DEFAULT_ADS_ENDPOINT = "https://adx.ads.vungle.com/api/ads";
    @JvmField
    @NotNull
    public static final String DEFAULT_ERROR_LOGS_ENDPOINT = "https://logs.ads.vungle.com/sdk/error_logs";
    @JvmField
    @NotNull
    public static final String DEFAULT_METRICS_ENDPOINT = "https://logs.ads.vungle.com/sdk/metrics";

    private Constants() {
    }
}
