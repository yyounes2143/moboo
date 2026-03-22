package com.changdu.mobovideo.localpush;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.SystemClock;
import android.widget.RemoteViews;
import androidx.core.app.NotificationCompat;
import androidx.core.graphics.drawable.DrawableKt;
import androidx.media3.extractor.text.ttml.TtmlNode;
import coil.request.CachePolicy;
import coil.request.ImageRequest;
import coil.request.ImageResult;
import com.changdu.mobovideo.MainActivity;
import com.changdu.mobovideo.R;
import com.changdu.mobovideo.plugins.BitmapUtils;
import com.changdu.mobovideo.utils.NotificationUtil;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.sensorsdata.analytics.android.sdk.aop.push.PushAutoTrackHelper;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.random.Random;
import kotlin.text.MatchResult;
import kotlin.text.Regex;
import kotlin.text.RegexOption;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt__BuildersKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000t\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001:\u0002CDB\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001d\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\f\u0010\rJ)\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u000e2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0015\u0010\u0016JI\u0010 \u001a\u00020\u001f2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\u0019\u001a\u00020\u000b2\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001d\u001a\u00020\u001c2\b\u0010\u001e\u001a\u0004\u0018\u00010\u000bH\u0002¢\u0006\u0004\b \u0010!J\u0017\u0010#\u001a\u00020\u000b2\u0006\u0010\"\u001a\u00020\u001cH\u0002¢\u0006\u0004\b#\u0010$JC\u0010'\u001a\u00020\u001f2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u0018\u001a\u00020\u000b2\b\u0010&\u001a\u0004\u0018\u00010%2\b\u0010\u0019\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u001b\u001a\u00020\u001aH\u0002¢\u0006\u0004\b'\u0010(JM\u0010*\u001a\u00020\u001f2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u0018\u001a\u00020\u000b2\b\u0010\u0019\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u001b\u001a\u00020\u001a2\b\u0010\u001e\u001a\u0004\u0018\u00010\u000b2\b\u0010)\u001a\u0004\u0018\u00010\u000bH\u0002¢\u0006\u0004\b*\u0010+J!\u0010-\u001a\u00020\u000e2\u0006\u0010,\u001a\u00020\u000e2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0002¢\u0006\u0004\b-\u0010.J\u001b\u00100\u001a\u0004\u0018\u00010\u001c2\b\u0010/\u001a\u0004\u0018\u00010\u000bH\u0002¢\u0006\u0004\b0\u00101J!\u00104\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u00103\u001a\u000202H\u0002¢\u0006\u0004\b4\u00105JG\u0010;\u001a\u0004\u0018\u00010%2\u0006\u0010\u0005\u001a\u00020\u00042\b\u00106\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u00108\u001a\u0004\u0018\u0001072\n\b\u0002\u00109\u001a\u0004\u0018\u00010\u00142\n\b\u0002\u0010:\u001a\u0004\u0018\u00010\u0014H\u0002¢\u0006\u0004\b;\u0010<J+\u0010>\u001a\u00020%2\u0006\u0010=\u001a\u00020%2\b\u00109\u001a\u0004\u0018\u00010\u00142\b\u0010:\u001a\u0004\u0018\u00010\u0014H\u0002¢\u0006\u0004\b>\u0010?R\u0014\u0010B\u001a\u00020@8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010A¨\u0006E"}, d2 = {"Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory;", "", "<init>", "()V", "Landroid/content/Context;", "context", "Lcom/changdu/mobovideo/localpush/LocalPushType;", "type", "", "Wwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;Lcom/changdu/mobovideo/localpush/LocalPushType;)Z", "", "Wwwwwwwwwwwwwwwwwwwwwww", "(Lcom/changdu/mobovideo/localpush/LocalPushType;)Ljava/lang/String;", "Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory$PushContent;", "content", "Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory$PushConfigContentItem;", "item", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/changdu/mobovideo/localpush/LocalPushType;Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory$PushContent;Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory$PushConfigContentItem;)Ljava/lang/String;", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/changdu/mobovideo/localpush/LocalPushType;)I", "contentTitle", "contentText", "button", "Landroidx/core/app/NotificationCompat$Builder;", "builder", "", "countDownSeconds", "collapsedRightImageUrl", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/core/app/NotificationCompat$Builder;JLjava/lang/String;)V", "totalSeconds", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(J)Ljava/lang/String;", "Landroid/graphics/Bitmap;", "image", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Landroidx/core/app/NotificationCompat$Builder;)V", "expandedBgImageUrl", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/core/app/NotificationCompat$Builder;Ljava/lang/String;Ljava/lang/String;)V", TtmlNode.RUBY_BASE, "Wwwwwwwwwwwwwwwwwwwww", "(Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory$PushContent;Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory$PushConfigContentItem;)Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory$PushContent;", "ndAction", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)Ljava/lang/Long;", "Lcom/changdu/mobovideo/localpush/LocalPushConfig;", "config", "Wwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/changdu/mobovideo/localpush/LocalPushType;Lcom/changdu/mobovideo/localpush/LocalPushConfig;)Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory$PushConfigContentItem;", "url", "", "roundedCornerDp", "requestWidthPx", "requestHeightPx", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Integer;)Landroid/graphics/Bitmap;", "bitmap", "Wwwwwwwwwwwwwwwwwwwwww", "(Landroid/graphics/Bitmap;Ljava/lang/Integer;Ljava/lang/Integer;)Landroid/graphics/Bitmap;", "Lkotlin/text/Regex;", "Lkotlin/text/Regex;", "SERIES_ID_REGEX", "PushContent", "PushConfigContentItem", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nLocalPushNotificationFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LocalPushNotificationFactory.kt\ncom/changdu/mobovideo/localpush/LocalPushNotificationFactory\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,551:1\n1#2:552\n*E\n"})
/* loaded from: classes3.dex */
public final class LocalPushNotificationFactory {
    @NotNull
    public static final LocalPushNotificationFactory INSTANCE = new LocalPushNotificationFactory();
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Regex f5498Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new Regex("(?:^|[?(;&])seriesid=(\\d+)", RegexOption.IGNORE_CASE);

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\t\b\u0082\b\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\n\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\r\u001a\u00020\fHÖ\u0001¢\u0006\u0004\b\r\u0010\u000eJ\u001a\u0010\u0011\u001a\u00020\u00102\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0011\u0010\u0012R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u000bR\u0017\u0010\u0004\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0016\u0010\u0014\u001a\u0004\b\u0016\u0010\u000bR\u0017\u0010\u0005\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0017\u0010\u0014\u001a\u0004\b\u0018\u0010\u000bR\u0017\u0010\u0006\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0018\u0010\u0014\u001a\u0004\b\u0017\u0010\u000bR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0015\u0010\u0014\u001a\u0004\b\u0013\u0010\u000b¨\u0006\u0019"}, d2 = {"Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory$PushConfigContentItem;", "", "", CampaignEx.JSON_KEY_TITLE, "content", "ndAction", "cover", "buttonText", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class PushConfigContentItem {
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final String f5499Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final String f5500Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final String f5501Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final String f5502Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final String f5503Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public PushConfigContentItem(@NotNull String str, @NotNull String str2, @NotNull String str3, @NotNull String str4, @NotNull String str5) {
            this.f5503Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
            this.f5502Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str2;
            this.f5501Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str3;
            this.f5500Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str4;
            this.f5499Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str5;
        }

        @NotNull
        public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f5503Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f5501Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f5500Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f5502Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f5499Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof PushConfigContentItem)) {
                return false;
            }
            PushConfigContentItem pushConfigContentItem = (PushConfigContentItem) obj;
            if (Intrinsics.areEqual(this.f5503Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, pushConfigContentItem.f5503Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) && Intrinsics.areEqual(this.f5502Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, pushConfigContentItem.f5502Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) && Intrinsics.areEqual(this.f5501Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, pushConfigContentItem.f5501Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) && Intrinsics.areEqual(this.f5500Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, pushConfigContentItem.f5500Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) && Intrinsics.areEqual(this.f5499Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww, pushConfigContentItem.f5499Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (((((((this.f5503Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode() * 31) + this.f5502Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode()) * 31) + this.f5501Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode()) * 31) + this.f5500Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode()) * 31) + this.f5499Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode();
        }

        @NotNull
        public String toString() {
            String str = this.f5503Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            String str2 = this.f5502Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            String str3 = this.f5501Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            String str4 = this.f5500Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            String str5 = this.f5499Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            return "PushConfigContentItem(title=" + str + ", content=" + str2 + ", ndAction=" + str3 + ", cover=" + str4 + ", buttonText=" + str5 + ")";
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\b\b\u0082\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\t\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\f\u001a\u00020\u000bHÖ\u0001¢\u0006\u0004\b\f\u0010\rJ\u001a\u0010\u0010\u001a\u00020\u000f2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0010\u0010\u0011R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\nR\u0017\u0010\u0004\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0015\u0010\u0013\u001a\u0004\b\u0016\u0010\nR\u0017\u0010\u0005\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0016\u0010\u0013\u001a\u0004\b\u0012\u0010\nR\u0017\u0010\u0006\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0013\u001a\u0004\b\u0015\u0010\n¨\u0006\u0017"}, d2 = {"Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory$PushContent;", "", "", CampaignEx.JSON_KEY_TITLE, "text", "button", "pushStyle", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class PushContent {
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final String f5504Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final String f5505Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final String f5506Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final String f5507Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public PushContent(@NotNull String str, @NotNull String str2, @NotNull String str3, @NotNull String str4) {
            this.f5507Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
            this.f5506Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str2;
            this.f5505Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str3;
            this.f5504Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str4;
        }

        @NotNull
        public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f5507Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f5506Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f5504Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f5505Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof PushContent)) {
                return false;
            }
            PushContent pushContent = (PushContent) obj;
            if (Intrinsics.areEqual(this.f5507Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, pushContent.f5507Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) && Intrinsics.areEqual(this.f5506Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, pushContent.f5506Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) && Intrinsics.areEqual(this.f5505Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, pushContent.f5505Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) && Intrinsics.areEqual(this.f5504Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, pushContent.f5504Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (((((this.f5507Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode() * 31) + this.f5506Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode()) * 31) + this.f5505Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode()) * 31) + this.f5504Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode();
        }

        @NotNull
        public String toString() {
            String str = this.f5507Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            String str2 = this.f5506Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            String str3 = this.f5505Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            String str4 = this.f5504Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            return "PushContent(title=" + str + ", text=" + str2 + ", button=" + str3 + ", pushStyle=" + str4 + ")";
        }
    }

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

    public static /* synthetic */ Bitmap Wwwwwwwwwwwwwwwwwwwwwwwwww(LocalPushNotificationFactory localPushNotificationFactory, Context context, String str, Float f, Integer num, Integer num2, int i, Object obj) {
        if ((i & 4) != 0) {
            f = null;
        }
        if ((i & 8) != 0) {
            num = null;
        }
        if ((i & 16) != 0) {
            num2 = null;
        }
        return localPushNotificationFactory.Wwwwwwwwwwwwwwwwwwwwwwwwwww(context, str, f, num, num2);
    }

    public final PushContent Wwwwwwwwwwwwwwwwwwwww(PushContent pushContent, PushConfigContentItem pushConfigContentItem) {
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        if (pushConfigContentItem == null) {
            return pushContent;
        }
        if (StringsKt.isBlank(pushConfigContentItem.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww())) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = pushContent.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        } else {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = pushConfigContentItem.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        if (StringsKt.isBlank(pushConfigContentItem.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww())) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = pushContent.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        } else {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = pushConfigContentItem.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        if (StringsKt.isBlank(pushConfigContentItem.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww())) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = pushContent.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        } else {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = pushConfigContentItem.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        return new PushContent(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, pushContent.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
    }

    public final Bitmap Wwwwwwwwwwwwwwwwwwwwww(Bitmap bitmap, Integer num, Integer num2) {
        int i;
        int i2 = 0;
        if (num != null) {
            i = num.intValue();
        } else {
            i = 0;
        }
        if (num2 != null) {
            i2 = num2.intValue();
        }
        if (i > 0 && i2 > 0) {
            if (bitmap.getWidth() > i || bitmap.getHeight() > i2) {
                float min = Math.min(i / bitmap.getWidth(), i2 / bitmap.getHeight());
                if (min < 1.0f) {
                    return Bitmap.createScaledBitmap(bitmap, Math.max(1, (int) (bitmap.getWidth() * min)), Math.max(1, (int) (bitmap.getHeight() * min)), true);
                }
            }
            return bitmap;
        }
        return bitmap;
    }

    public final String Wwwwwwwwwwwwwwwwwwwwwww(LocalPushType localPushType) {
        int i = WhenMappings.$EnumSwitchMapping$0[localPushType.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i == 3) {
                    return "解锁Push";
                }
                throw new NoWhenBranchMatchedException();
            }
            return "召回Push";
        }
        return "签到Push";
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context, @NotNull LocalPushType localPushType) {
        PushContent pushContent;
        Long l;
        LocalPushType localPushType2;
        boolean z;
        Bitmap bitmap;
        int i;
        Intent intent;
        int i2;
        Context context2 = context;
        int i3 = WhenMappings.$EnumSwitchMapping$0[localPushType.ordinal()];
        if (i3 != 1) {
            if (i3 != 2) {
                if (i3 == 3) {
                    pushContent = new PushContent(context2.getString(R.string.widget_intro_title4), context2.getString(R.string.widget_intro_subtitle3), context2.getString(R.string.widget_reward), "3");
                } else {
                    throw new NoWhenBranchMatchedException();
                }
            } else {
                pushContent = new PushContent(context2.getString(R.string.widget_intro_title1), context2.getString(R.string.widget_guide_watch), context2.getString(R.string.watch_other), "2");
            }
        } else {
            pushContent = new PushContent(context2.getString(R.string.sign_in_title), context2.getString(R.string.sign_in_first_hint), context2.getString(R.string.sign_in_now), "1");
        }
        LocalPushConfig Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = LocalPushConfigProvider.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        PushConfigContentItem Wwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwww(localPushType, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        if (Wwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
            Wwwwwwwwwwwwwwwwwwwwwww(localPushType);
            return false;
        }
        PushContent Wwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwww(pushContent, Wwwwwwwwwwwwwwwwwwwwwwwww2);
        long max = Math.max(0L, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwww());
        LocalPushType localPushType3 = LocalPushType.PROMOTION;
        NotificationManager notificationManager = null;
        if (localPushType == localPushType3) {
            l = Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        } else {
            l = null;
        }
        if (localPushType == localPushType3) {
            String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            Float valueOf = Float.valueOf(4.0f);
            BitmapUtils bitmapUtils = BitmapUtils.INSTANCE;
            z = false;
            localPushType2 = localPushType3;
            bitmap = Wwwwwwwwwwwwwwwwwwwwwwwwwww(context2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, valueOf, Integer.valueOf((int) bitmapUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context2, 69.0f)), Integer.valueOf((int) bitmapUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context2, 92.0f)));
        } else {
            localPushType2 = localPushType3;
            z = false;
            bitmap = null;
        }
        Object systemService = context2.getSystemService("notification");
        if (systemService instanceof NotificationManager) {
            notificationManager = (NotificationManager) systemService;
        }
        NotificationManager notificationManager2 = notificationManager;
        if (notificationManager2 == null) {
            return z;
        }
        NotificationUtil notificationUtil = NotificationUtil.INSTANCE;
        notificationUtil.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(context2, notificationManager2);
        Intent intent2 = new Intent(context2, MainActivity.class);
        intent2.putExtra("local_push_type", localPushType.name());
        intent2.putExtra(notificationUtil.Wwwwwwwwwwwwwwwwwwwwwwww(), INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(localPushType, Wwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwww2));
        int nextInt = Random.Default.nextInt(110000, 99999999);
        NotificationCompat.Builder builder = new NotificationCompat.Builder(context2, notificationUtil.Wwwwwwwwwwwwwwwwwwwwwwwwwww(context2));
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = Wwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        switch (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3.hashCode()) {
            case 49:
                i = nextInt;
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3.equals("1")) {
                    String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = Wwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    String Wwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwww();
                    context2 = context;
                    intent = intent2;
                    i2 = i;
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, builder, max, Wwwwwwwwwwwwwww2);
                    break;
                }
                context2 = context;
                i2 = i;
                intent = intent2;
                break;
            case 50:
                i = nextInt;
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3.equals("2")) {
                    context2 = context;
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context2, Wwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), Wwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), Wwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), builder, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwww(), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwww());
                    i2 = i;
                    intent = intent2;
                    break;
                }
                context2 = context;
                i2 = i;
                intent = intent2;
            case 51:
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3.equals("3")) {
                    i = nextInt;
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context2, Wwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), Wwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), bitmap, Wwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), builder);
                    context2 = context;
                    builder = builder;
                    i2 = i;
                    intent = intent2;
                    break;
                }
            default:
                i2 = nextInt;
                intent = intent2;
                break;
        }
        builder.setSmallIcon(R.mipmap.ic_launcher).setContentTitle(Wwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()).setContentText(Wwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()).setStyle(new NotificationCompat.DecoratedCustomViewStyle());
        PushAutoTrackHelper.hookIntentGetActivity(context2, i2, intent, 201326592);
        PendingIntent activity = PendingIntent.getActivity(context2, i2, intent, 201326592);
        PushAutoTrackHelper.hookPendingIntentGetActivity(activity, context2, i2, intent, 201326592);
        builder.setContentIntent(activity).build();
        if (Build.VERSION.SDK_INT >= 26) {
            builder.setBadgeIconType(1);
        }
        builder.setContentTitle(Wwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        builder.setContentText(Wwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        Notification build = builder.build();
        build.flags |= 16;
        notificationManager2.notify(i2, build);
        PushAutoTrackHelper.onNotify(notificationManager2, i2, build);
        if (localPushType == localPushType2) {
            if (l != null) {
                LocalPushStateStore.Wwwwwwww(LocalPushStateStore.INSTANCE, l.longValue(), 0L, 2, null);
            }
            Wwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        LocalPushAnalyticsReporter.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context2, localPushType, Wwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), Wwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), Wwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        return true;
    }

    public final PushConfigContentItem Wwwwwwwwwwwwwwwwwwwwwwwww(LocalPushType localPushType, LocalPushConfig localPushConfig) {
        Pair pair;
        int length;
        int i;
        int i2 = WhenMappings.$EnumSwitchMapping$0[localPushType.ordinal()];
        if (i2 != 1) {
            if (i2 != 2) {
                if (i2 == 3) {
                    pair = TuplesKt.to(localPushConfig.Wwwwwwwwwwwwwwwwwwwwwwww(), Integer.valueOf(localPushConfig.Wwwwwwwwwwwwwwwwwwwwwwwww()));
                } else {
                    throw new NoWhenBranchMatchedException();
                }
            } else {
                pair = TuplesKt.to(localPushConfig.Wwwwwwwwwwwwwwwwwww(), Integer.valueOf(localPushConfig.Wwwwwwwwwwwwwwwwwwww()));
            }
        } else {
            pair = TuplesKt.to(localPushConfig.Wwwwwwwwwwwww(), Integer.valueOf(localPushConfig.Wwwwwwwwwwwwww()));
        }
        String str = (String) pair.component1();
        int intValue = ((Number) pair.component2()).intValue();
        if (str != null && !StringsKt.isBlank(str)) {
            try {
                JSONArray jSONArray = new JSONArray(str);
                if (jSONArray.length() <= 0) {
                    return null;
                }
                if (LocalPushContentRule.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(intValue) == 1) {
                    i = Random.Default.nextInt(jSONArray.length());
                } else {
                    LocalPushStateStore localPushStateStore = LocalPushStateStore.INSTANCE;
                    int Wwwwwwwwwwwwwwwwwwwwwwww2 = localPushStateStore.Wwwwwwwwwwwwwwwwwwwwwwww(localPushType);
                    if (Wwwwwwwwwwwwwwwwwwwwwwww2 < 0) {
                        length = 0;
                    } else {
                        length = Wwwwwwwwwwwwwwwwwwwwwwww2 % jSONArray.length();
                    }
                    localPushStateStore.Wwwwww(localPushType, (length + 1) % jSONArray.length());
                    i = length;
                }
                JSONObject optJSONObject = jSONArray.optJSONObject(i);
                if (optJSONObject == null) {
                    optJSONObject = new JSONObject();
                }
                return new PushConfigContentItem(optJSONObject.optString(CampaignEx.JSON_KEY_TITLE), optJSONObject.optString("content"), optJSONObject.optString("ndaction"), optJSONObject.optString("cover"), optJSONObject.optString("buttonText"));
            } catch (Throwable unused) {
            }
        }
        return null;
    }

    public final Bitmap Wwwwwwwwwwwwwwwwwwwwwwwwwww(Context context, String str, Float f, Integer num, Integer num2) {
        Object runBlocking$default;
        Bitmap bitmap$default;
        if (str != null && !StringsKt.isBlank(str)) {
            try {
                runBlocking$default = BuildersKt__BuildersKt.runBlocking$default(null, new LocalPushNotificationFactory$loadBitmapFromUrl$result$1(context, new ImageRequest.Builder(context).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(false).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(CachePolicy.DISABLED).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), null), 1, null);
                Drawable Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = ((ImageResult) runBlocking$default).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null && (bitmap$default = DrawableKt.toBitmap$default(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, 0, 0, null, 7, null)) != null) {
                    Bitmap Wwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwww(bitmap$default, num, num2);
                    if (f != null && f.floatValue() > 0.0f) {
                        BitmapUtils bitmapUtils = BitmapUtils.INSTANCE;
                        Bitmap Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = bitmapUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwww2, bitmapUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, f.floatValue()));
                        if (Wwwwwwwwwwwwwwwwwwwwww2 != bitmap$default) {
                            bitmap$default.recycle();
                        }
                        Wwwwwwwwwwwwwwwwwwwwww2.recycle();
                        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                    }
                    return Wwwwwwwwwwwwwwwwwwwwww2;
                }
            } catch (Throwable unused) {
            }
        }
        return null;
    }

    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwww(long j) {
        long max = Math.max(0L, j);
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        return String.format("%02d:%02d:%02d", Arrays.copyOf(new Object[]{Long.valueOf(max / 3600), Long.valueOf((max % 3600) / 60), Long.valueOf(max % 60)}, 3));
    }

    public final Long Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        MatchResult find$default;
        String str2;
        Long longOrNull;
        if (str == null || StringsKt.isBlank(str) || (find$default = Regex.find$default(f5498Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, str, 0, 2, null)) == null || (str2 = (String) CollectionsKt.getOrNull(find$default.getGroupValues(), 1)) == null || (longOrNull = StringsKt.toLongOrNull(str2)) == null || longOrNull.longValue() <= 0) {
            return null;
        }
        return longOrNull;
    }

    public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(LocalPushType localPushType) {
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

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context, String str, String str2, String str3, NotificationCompat.Builder builder, long j, String str4) {
        RemoteViews remoteViews = new RemoteViews(context.getPackageName(), (int) R.layout.local_push_sign_in_small);
        RemoteViews remoteViews2 = new RemoteViews(context.getPackageName(), (int) R.layout.local_push_sign_in_large);
        remoteViews.setTextViewText(R.id.title, str);
        remoteViews2.setTextViewText(R.id.titleView, str);
        remoteViews.setTextViewText(R.id.content, str2);
        remoteViews2.setTextViewText(R.id.contentView, str2);
        Float valueOf = Float.valueOf(4.0f);
        BitmapUtils bitmapUtils = BitmapUtils.INSTANCE;
        Bitmap Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwww(context, str4, valueOf, Integer.valueOf((int) bitmapUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, 69.0f)), Integer.valueOf((int) bitmapUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, 92.0f)));
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
            remoteViews.setImageViewBitmap(R.id.endImageView, Wwwwwwwwwwwwwwwwwwwwwwwwwww2);
            remoteViews.setViewVisibility(R.id.endImageView, 0);
        } else {
            remoteViews.setImageViewResource(R.id.endImageView, R.drawable.ic_local_push_sign_in_go);
            remoteViews.setViewVisibility(R.id.endImageView, 0);
            if (str4 != null) {
                StringsKt.isBlank(str4);
            }
        }
        if (str3.length() > 0) {
            remoteViews2.setViewVisibility(R.id.btnView, 0);
            remoteViews2.setTextViewText(R.id.btnView, str3);
        } else {
            remoteViews2.setViewVisibility(R.id.btnView, 8);
        }
        long max = Math.max(0L, j);
        if (max > 0) {
            remoteViews2.setViewVisibility(R.id.chronometerView, 0);
            long j2 = 1000 * max;
            remoteViews2.setChronometer(R.id.chronometerView, SystemClock.elapsedRealtime() + j2, "%s", true);
            if (Build.VERSION.SDK_INT >= 24) {
                remoteViews2.setChronometerCountDown(R.id.chronometerView, true);
                builder.setTimeoutAfter(j2);
            } else {
                remoteViews2.setTextViewText(R.id.chronometerView, Wwwwwwwwwwwwwwwwwwwwwwwwwwww(max));
            }
        } else {
            remoteViews2.setViewVisibility(R.id.chronometerView, 8);
        }
        builder.setCustomContentView(remoteViews);
        builder.setCustomBigContentView(remoteViews2);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context, String str, String str2, Bitmap bitmap, String str3, NotificationCompat.Builder builder) {
        RemoteViews remoteViews = new RemoteViews(context.getPackageName(), (int) R.layout.local_push_recommend_series_small);
        RemoteViews remoteViews2 = new RemoteViews(context.getPackageName(), (int) R.layout.local_push_recommend_series_large);
        remoteViews.setTextViewText(R.id.title, str);
        remoteViews2.setTextViewText(R.id.title, str);
        remoteViews.setTextViewText(R.id.content, str2);
        remoteViews2.setTextViewText(R.id.content, str2);
        if (bitmap != null) {
            remoteViews.setImageViewBitmap(R.id.endImageView, bitmap);
            remoteViews.setViewVisibility(R.id.endImageView, 0);
            remoteViews2.setImageViewBitmap(R.id.endImageView, bitmap);
            remoteViews2.setViewVisibility(R.id.endImageView, 0);
        } else {
            remoteViews.setViewVisibility(R.id.endImageView, 8);
            remoteViews2.setViewVisibility(R.id.endImageView, 8);
        }
        if (str3 != null && str3.length() != 0) {
            remoteViews2.setViewVisibility(R.id.btnView, 0);
            remoteViews2.setTextViewText(R.id.btnView, str3);
        } else {
            remoteViews2.setViewVisibility(R.id.btnView, 8);
        }
        builder.setCustomContentView(remoteViews);
        builder.setCustomBigContentView(remoteViews2);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context, String str, String str2, String str3, NotificationCompat.Builder builder, String str4, String str5) {
        RemoteViews remoteViews = new RemoteViews(context.getPackageName(), (int) R.layout.local_push_recall_small);
        RemoteViews remoteViews2 = new RemoteViews(context.getPackageName(), (int) R.layout.local_push_recall_large);
        remoteViews.setTextViewText(R.id.title, str);
        remoteViews2.setTextViewText(R.id.titleView, str);
        remoteViews.setTextViewText(R.id.content, str2);
        remoteViews2.setTextViewText(R.id.contentView, str2);
        Float valueOf = Float.valueOf(4.0f);
        BitmapUtils bitmapUtils = BitmapUtils.INSTANCE;
        Bitmap Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwww(context, str4, valueOf, Integer.valueOf((int) bitmapUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, 69.0f)), Integer.valueOf((int) bitmapUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, 92.0f)));
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
            remoteViews.setImageViewBitmap(R.id.endImageView, Wwwwwwwwwwwwwwwwwwwwwwwwwww2);
            remoteViews.setViewVisibility(R.id.endImageView, 0);
        } else {
            remoteViews.setImageViewResource(R.id.endImageView, R.drawable.ic_local_push_recall_end);
            remoteViews.setViewVisibility(R.id.endImageView, 0);
            if (str4 != null) {
                StringsKt.isBlank(str4);
            }
        }
        Bitmap Wwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwww(this, context, str5, null, null, null, 28, null);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
            remoteViews2.setImageViewBitmap(R.id.bgImageView, Wwwwwwwwwwwwwwwwwwwwwwwwww2);
        } else {
            remoteViews2.setImageViewResource(R.id.bgImageView, R.drawable.bg_local_push_recall_large);
            if (str5 != null) {
                StringsKt.isBlank(str5);
            }
        }
        if (str3 != null && str3.length() != 0) {
            remoteViews2.setViewVisibility(R.id.btnView, 0);
            remoteViews2.setTextViewText(R.id.btnView, str3);
        } else {
            remoteViews2.setViewVisibility(R.id.btnView, 8);
        }
        builder.setCustomContentView(remoteViews);
        builder.setCustomBigContentView(remoteViews2);
    }

    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(LocalPushType localPushType, PushContent pushContent, PushConfigContentItem pushConfigContentItem) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("isLocalPush", true);
            jSONObject.put("localPushType", localPushType.name());
            jSONObject.put(CampaignEx.JSON_KEY_TITLE, pushContent.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            jSONObject.put("body", pushContent.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            jSONObject.put("pushStyle", pushContent.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            jSONObject.put("pushType", INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(localPushType));
            jSONObject.put("act", (pushConfigContentItem == null || (r6 = pushConfigContentItem.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) == null) ? "" : "");
            return jSONObject.toString();
        } catch (Throwable unused) {
            return "";
        }
    }
}
