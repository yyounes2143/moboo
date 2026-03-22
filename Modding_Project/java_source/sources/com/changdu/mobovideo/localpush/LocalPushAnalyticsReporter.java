package com.changdu.mobovideo.localpush;

import android.content.Context;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.sensorsdata.analytics.android.sdk.SAConfigOptions;
import com.sensorsdata.analytics.android.sdk.SensorsDataAPI;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import org.jetbrains.annotations.NotNull;
import org.json.JSONObject;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J5\u0010\r\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\b¢\u0006\u0004\b\r\u0010\u000eJ\u0015\u0010\u000f\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0012\u0010\u0013¨\u0006\u0014"}, d2 = {"Lcom/changdu/mobovideo/localpush/LocalPushAnalyticsReporter;", "", "<init>", "()V", "Landroid/content/Context;", "context", "Lcom/changdu/mobovideo/localpush/LocalPushType;", "type", "", CampaignEx.JSON_KEY_TITLE, "content", "nd", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;Lcom/changdu/mobovideo/localpush/LocalPushType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;)V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/changdu/mobovideo/localpush/LocalPushType;)I", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class LocalPushAnalyticsReporter {
    @NotNull
    public static final LocalPushAnalyticsReporter INSTANCE = new LocalPushAnalyticsReporter();

    /* compiled from: Proguard */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[LocalPushType.values().length];
            try {
                iArr[LocalPushType.SIGN_IN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LocalPushType.RECALL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[LocalPushType.PROMOTION.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context, @NotNull LocalPushType localPushType, @NotNull String str, @NotNull String str2, @NotNull String str3) {
        try {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context);
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("push_id", "101");
            jSONObject.put("push_type", INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(localPushType));
            jSONObject.put("push_content", str2);
            jSONObject.put("push_jump_page", str3);
            jSONObject.put("push_title", str);
            jSONObject.put("element_id", "210050");
            jSONObject.put("element_name", "本地PUSH");
            SensorsDataAPI.sharedInstance().track("elementExposure", jSONObject);
        } catch (Throwable unused) {
        }
    }

    public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(LocalPushType localPushType) {
        int i = WhenMappings.$EnumSwitchMapping$0[localPushType.ordinal()];
        int i2 = 1;
        if (i != 1) {
            i2 = 2;
            if (i != 2) {
                if (i == 3) {
                    return 3;
                }
                throw new NoWhenBranchMatchedException();
            }
        }
        return i2;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context) {
        try {
            if (SensorsDataAPI.sharedInstance().getAnonymousId() == null) {
                SAConfigOptions sAConfigOptions = new SAConfigOptions("https://log.51changdu.com/api/projectevent?project=cd_video");
                sAConfigOptions.enableJavaScriptBridge(true).enableLog(false).enableHeatMap(true).setAutoTrackEventType(11).enableTrackPageLeave(true, true);
                SensorsDataAPI.startWithConfigOptions(context, sAConfigOptions);
            }
        } catch (Throwable unused) {
        }
    }
}
