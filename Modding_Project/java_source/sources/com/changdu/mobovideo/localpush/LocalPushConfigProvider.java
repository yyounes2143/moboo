package com.changdu.mobovideo.localpush;

import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.json.JSONObject;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\r\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006J\u0015\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0004¢\u0006\u0004\b\t\u0010\nJ\u0019\u0010\r\u001a\u0004\u0018\u00010\u00042\u0006\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0013\u0010\u0006¨\u0006\u0014"}, d2 = {"Lcom/changdu/mobovideo/localpush/LocalPushConfigProvider;", "", "<init>", "()V", "Lcom/changdu/mobovideo/localpush/LocalPushConfig;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lcom/changdu/mobovideo/localpush/LocalPushConfig;", "config", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/changdu/mobovideo/localpush/LocalPushConfig;)V", "", "raw", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)Lcom/changdu/mobovideo/localpush/LocalPushConfig;", "", "value", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(I)I", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nLocalPushConfig.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LocalPushConfig.kt\ncom/changdu/mobovideo/localpush/LocalPushConfigProvider\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,224:1\n1#2:225\n*E\n"})
/* loaded from: classes3.dex */
public final class LocalPushConfigProvider {
    @NotNull
    public static final LocalPushConfigProvider INSTANCE = new LocalPushConfigProvider();

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull LocalPushConfig localPushConfig) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("userZoneId", localPushConfig.Wwwwwwwww());
            jSONObject.put("frequencyGapSeconds", localPushConfig.Wwwwwwwwwwwwwwwwwwwwwwwwww());
            jSONObject.put("signInCountDownSeconds", localPushConfig.Wwwwwwwwwwww());
            jSONObject.put("signInTriggerSecondOfDay", localPushConfig.Wwwwwwwwww());
            jSONObject.put("signInIntervalSeconds", localPushConfig.Wwwwwwwwwww());
            jSONObject.put("recallTriggerAtMs", localPushConfig.Wwwwwwwwwwwwwwww());
            jSONObject.put("recallIntervalSeconds", localPushConfig.Wwwwwwwwwwwwwwwww());
            jSONObject.put("promotionDelaySeconds", localPushConfig.Wwwwwwwwwwwwwwwwwwwwwww());
            jSONObject.put("promotionIntervalSeconds", localPushConfig.Wwwwwwwwwwwwwwwwwwwwww());
            jSONObject.put("dndStartSecondOfDay", localPushConfig.Wwwwwwwwwwwwwwwwwwwwwwwwwww());
            jSONObject.put("dndEndSecondOfDay", localPushConfig.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            jSONObject.put("dndSignInStartSecondOfDay", localPushConfig.Wwwwwwwwwwwwwwwwwwwwwwwwwwww());
            jSONObject.put("dndSignInEndSecondOfDay", localPushConfig.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            jSONObject.put("dndRecallStartSecondOfDay", localPushConfig.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            jSONObject.put("dndRecallEndSecondOfDay", localPushConfig.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            jSONObject.put("dndPromotionStartSecondOfDay", localPushConfig.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            jSONObject.put("dndPromotionEndSecondOfDay", localPushConfig.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            jSONObject.put("signInCollapsedRightImageUrl", localPushConfig.Wwwwwwwwwwwwwww());
            jSONObject.put("recallCollapsedRightImageUrl", localPushConfig.Wwwwwwwwwwwwwwwwwwwww());
            jSONObject.put("recallExpandedBgImageUrl", localPushConfig.Wwwwwwwwwwwwwwwwww());
            jSONObject.put("signInContentRule", localPushConfig.Wwwwwwwwwwwwww());
            jSONObject.put("recallContentRule", localPushConfig.Wwwwwwwwwwwwwwwwwwww());
            jSONObject.put("promotionContentRule", localPushConfig.Wwwwwwwwwwwwwwwwwwwwwwwww());
            jSONObject.put("signInContentsJson", localPushConfig.Wwwwwwwwwwwww());
            jSONObject.put("recallContentsJson", localPushConfig.Wwwwwwwwwwwwwwwwwww());
            jSONObject.put("promotionContentsJson", localPushConfig.Wwwwwwwwwwwwwwwwwwwwwwww());
            LocalPushStorage.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("local_push_config_all_json", jSONObject.toString());
        } catch (Throwable unused) {
        }
    }

    public final LocalPushConfig Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        long j;
        long j2;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        try {
            JSONObject jSONObject = new JSONObject(str);
            int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject.optInt("dndStartSecondOfDay", -1));
            int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject.optInt("dndEndSecondOfDay", -1));
            long optLong = jSONObject.optLong("frequencyGapSeconds", 1800L);
            long optLong2 = jSONObject.optLong("signInCountDownSeconds", 14400L);
            String optString = jSONObject.optString("userZoneId");
            if (StringsKt.isBlank(optString)) {
                optString = null;
            }
            if (optLong >= 0) {
                j = optLong;
            } else {
                j = 1800;
            }
            if (optLong2 >= 0) {
                j2 = optLong2;
            } else {
                j2 = 14400;
            }
            int Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = LocalPushTime.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject.optInt("signInTriggerSecondOfDay", -1));
            long optLong3 = jSONObject.optLong("signInIntervalSeconds", 0L);
            long optLong4 = jSONObject.optLong("recallTriggerAtMs", 0L);
            long optLong5 = jSONObject.optLong("recallIntervalSeconds", 0L);
            long optLong6 = jSONObject.optLong("promotionDelaySeconds", 30L);
            String str8 = optString;
            long optLong7 = jSONObject.optLong("promotionIntervalSeconds", 0L);
            int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject.optInt("dndSignInStartSecondOfDay", Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2));
            int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww5 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject.optInt("dndSignInEndSecondOfDay", Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3));
            int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww6 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject.optInt("dndRecallStartSecondOfDay", Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2));
            int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww7 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject.optInt("dndRecallEndSecondOfDay", Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3));
            int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww8 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject.optInt("dndPromotionStartSecondOfDay", Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2));
            int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww9 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject.optInt("dndPromotionEndSecondOfDay", Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3));
            String optString2 = jSONObject.optString("signInCollapsedRightImageUrl");
            if (StringsKt.isBlank(optString2)) {
                str2 = null;
            } else {
                str2 = optString2;
            }
            String optString3 = jSONObject.optString("recallCollapsedRightImageUrl");
            if (StringsKt.isBlank(optString3)) {
                str3 = null;
            } else {
                str3 = optString3;
            }
            String optString4 = jSONObject.optString("recallExpandedBgImageUrl");
            if (StringsKt.isBlank(optString4)) {
                str4 = null;
            } else {
                str4 = optString4;
            }
            LocalPushContentRule localPushContentRule = LocalPushContentRule.INSTANCE;
            try {
                int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = localPushContentRule.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject.optInt("signInContentRule", 2));
                int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = localPushContentRule.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject.optInt("recallContentRule", 2));
                int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4 = localPushContentRule.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject.optInt("promotionContentRule", 2));
                String optString5 = jSONObject.optString("signInContentsJson");
                if (StringsKt.isBlank(optString5)) {
                    str5 = null;
                } else {
                    str5 = optString5;
                }
                String optString6 = jSONObject.optString("recallContentsJson");
                if (StringsKt.isBlank(optString6)) {
                    str6 = null;
                } else {
                    str6 = optString6;
                }
                String optString7 = jSONObject.optString("promotionContentsJson");
                if (StringsKt.isBlank(optString7)) {
                    str7 = null;
                } else {
                    str7 = optString7;
                }
                return new LocalPushConfig(str8, j, j2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2, optLong3, optLong4, optLong5, optLong6, optLong7, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww5, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww6, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww7, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww8, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww9, str2, str3, str4, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4, str5, str6, str7);
            } catch (Throwable unused) {
                return null;
            }
        } catch (Throwable unused2) {
            return null;
        }
    }

    public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
        if (i < 0) {
            return -1;
        }
        if (i == 86400) {
            return 0;
        }
        return i;
    }

    @NotNull
    public final LocalPushConfig Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        LocalPushStorage localPushStorage = LocalPushStorage.INSTANCE;
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = localPushStorage.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("local_push_config_all_json", null);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null && !StringsKt.isBlank(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2)) {
            LocalPushConfig Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            }
            localPushStorage.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("local_push_config_all_json", null);
        }
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public final LocalPushConfig Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return new LocalPushConfig(null, 1800L, 14400L, -1, 0L, 0L, 0L, 30L, 0L, -1, -1, -1, -1, -1, -1, -1, -1, null, null, null, 2, 2, 2, null, null, null);
    }
}
