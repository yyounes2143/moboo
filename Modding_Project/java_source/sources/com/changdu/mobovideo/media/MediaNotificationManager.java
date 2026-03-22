package com.changdu.mobovideo.media;

import android.annotation.SuppressLint;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Build;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.media.session.PlaybackStateCompat;
import androidx.browser.trusted.Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.app.NotificationCompat;
import androidx.media.app.NotificationCompat;
import androidx.media3.common.C;
import androidx.media3.common.util.Wwwwwwwwwwwwwwwwwwwwwwwww;
import com.appsflyer.AppsFlyerProperties;
import com.changdu.mobovideo.MainActivity;
import com.changdu.mobovideo.R;
import com.changdu.mobovideo.utils.NotificationUtil;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.sensorsdata.analytics.android.sdk.aop.push.PushAutoTrackHelper;
import com.tencent.vod.flutter.FTXEvent;
import io.flutter.plugin.common.MethodChannel;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u0000 D2\u00020\u0001:\u0001DB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0015\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\nJB\u0010\u0015\u001a\u00020\u00142\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u00112\b\u0010\u0013\u001a\u0004\u0018\u00010\u000bH\u0086@¢\u0006\u0004\b\u0015\u0010\u0016J%\u0010\u0017\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u0017\u0010\u0018J\u0015\u0010\u001a\u001a\u00020\b2\u0006\u0010\u0019\u001a\u00020\u0014¢\u0006\u0004\b\u001a\u0010\u001bJ\r\u0010\u001c\u001a\u00020\b¢\u0006\u0004\b\u001c\u0010\u001dJ\r\u0010\u001e\u001a\u00020\b¢\u0006\u0004\b\u001e\u0010\u001dJ\u0017\u0010!\u001a\u00020\b2\u0006\u0010 \u001a\u00020\u001fH\u0002¢\u0006\u0004\b!\u0010\"J\u000f\u0010#\u001a\u00020\bH\u0002¢\u0006\u0004\b#\u0010\u001dJ\u000f\u0010$\u001a\u00020\bH\u0002¢\u0006\u0004\b$\u0010\u001dJ\u001f\u0010%\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u0011H\u0002¢\u0006\u0004\b%\u0010&J\u000f\u0010(\u001a\u00020'H\u0002¢\u0006\u0004\b(\u0010)J\u000f\u0010*\u001a\u00020\bH\u0002¢\u0006\u0004\b*\u0010\u001dR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b+\u0010,R\u001b\u00102\u001a\u00020-8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b.\u0010/\u001a\u0004\b0\u00101R\u0018\u00106\u001a\u0004\u0018\u0001038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b4\u00105R\u0018\u0010:\u001a\u0004\u0018\u0001078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b8\u00109R\u0018\u0010>\u001a\u0004\u0018\u00010;8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b<\u0010=R\u0016\u0010\u0019\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b?\u0010@R\u0018\u0010C\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bA\u0010B¨\u0006E"}, d2 = {"Lcom/changdu/mobovideo/media/MediaNotificationManager;", "", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "Lio/flutter/plugin/common/MethodChannel;", AppsFlyerProperties.CHANNEL, "", "Wwwwwwwwwwwwwwwwwwwww", "(Lio/flutter/plugin/common/MethodChannel;)V", "", CampaignEx.JSON_KEY_TITLE, "artist", "", TypedValues.TransitionType.S_DURATION, "position", "", "playbackRate", "imageUrl", "", "Wwwwwwwwwwwwwwwww", "(Ljava/lang/String;Ljava/lang/String;DDFLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Wwwwwwwwwwwwww", "(DFD)V", FTXEvent.EXTRA_NAME_IS_PLAYING, "Wwwwwwwwwwwwwwww", "(Z)V", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "()V", "Wwwwwwwwwwwwwwwwww", "Landroid/support/v4/media/MediaMetadataCompat$Builder;", "metadataBuilder", "Wwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/support/v4/media/MediaMetadataCompat$Builder;)V", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwww", "(DF)V", "", "Wwwwwwwwwwwwwwwwwwwwwww", "()J", "Wwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Landroid/content/Context;", "Landroid/app/NotificationManager;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lkotlin/Lazy;", "Wwwwwwwwwwwwwwwwwwwwww", "()Landroid/app/NotificationManager;", "notificationManager", "Landroid/support/v4/media/session/MediaSessionCompat;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Landroid/support/v4/media/session/MediaSessionCompat;", "mediaSession", "Landroid/support/v4/media/MediaMetadataCompat;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Landroid/support/v4/media/MediaMetadataCompat;", "currentMetadata", "Landroid/graphics/Bitmap;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Landroid/graphics/Bitmap;", "artworkBitmap", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lio/flutter/plugin/common/MethodChannel;", "methodChannel", "Companion", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class MediaNotificationManager {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @SuppressLint({"StaticFieldLeak"})
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static volatile MediaNotificationManager f5543Wwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public MethodChannel f5544Wwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f5545Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Bitmap f5546Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public MediaMetadataCompat f5547Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public MediaSessionCompat f5548Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Lazy f5549Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = LazyKt.lazy(new Function0() { // from class: com.changdu.mobovideo.media.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            NotificationManager Wwwwwwwwwwwwwwwwwww2;
            Wwwwwwwwwwwwwwwwwww2 = MediaNotificationManager.Wwwwwwwwwwwwwwwwwww(MediaNotificationManager.this);
            return Wwwwwwwwwwwwwwwwwww2;
        }
    });
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Context f5550Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0015\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\bR\u0014\u0010\n\u001a\u00020\t8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u0014\u0010\f\u001a\u00020\t8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\f\u0010\u000bR\u0014\u0010\u000e\u001a\u00020\r8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0018\u0010\u0010\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0083\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011¨\u0006\u0012"}, d2 = {"Lcom/changdu/mobovideo/media/MediaNotificationManager$Companion;", "", "<init>", "()V", "Landroid/content/Context;", "context", "Lcom/changdu/mobovideo/media/MediaNotificationManager;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;)Lcom/changdu/mobovideo/media/MediaNotificationManager;", "", "TAG", "Ljava/lang/String;", "CHANNEL_ID", "", "NOTIFICATION_ID", "I", "instance", "Lcom/changdu/mobovideo/media/MediaNotificationManager;", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final MediaNotificationManager Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context) {
            MediaNotificationManager mediaNotificationManager;
            MediaNotificationManager mediaNotificationManager2 = MediaNotificationManager.f5543Wwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (mediaNotificationManager2 == null) {
                synchronized (this) {
                    mediaNotificationManager = MediaNotificationManager.f5543Wwwwwwwwwwwwwwwwwwwwwwwwwww;
                    if (mediaNotificationManager == null) {
                        mediaNotificationManager = new MediaNotificationManager(context.getApplicationContext());
                        MediaNotificationManager.f5543Wwwwwwwwwwwwwwwwwwwwwwwwwww = mediaNotificationManager;
                    }
                }
                return mediaNotificationManager;
            }
            return mediaNotificationManager2;
        }

        public Companion() {
        }
    }

    public MediaNotificationManager(@NotNull Context context) {
        this.f5550Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = context;
    }

    public static final NotificationManager Wwwwwwwwwwwwwwwwwww(MediaNotificationManager mediaNotificationManager) {
        return (NotificationManager) mediaNotificationManager.f5550Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getSystemService("notification");
    }

    public final void Wwwwwwwwwwwww(double d, float f) {
        PlaybackStateCompat.Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = new PlaybackStateCompat.Builder().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(3, (long) (d * 1000), f).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwww());
        MediaSessionCompat mediaSessionCompat = this.f5548Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (mediaSessionCompat != null) {
            mediaSessionCompat.Wwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        }
    }

    public final void Wwwwwwwwwwwwww(double d, float f, double d2) {
        MediaMetadataCompat mediaMetadataCompat;
        Wwwwwwwwwwwww(d, f);
        if (d2 > FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE && (mediaMetadataCompat = this.f5547Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) != null) {
            MediaMetadataCompat Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = new MediaMetadataCompat.Builder(mediaMetadataCompat).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("android.media.metadata.DURATION", (long) (d2 * 1000)).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            this.f5547Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            MediaSessionCompat mediaSessionCompat = this.f5548Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (mediaSessionCompat != null) {
                mediaSessionCompat.Wwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            }
        }
        Wwwwwwwwwwwwwww();
    }

    public final void Wwwwwwwwwwwwwww() {
        MediaSessionCompat.Token token;
        MediaMetadataCompat mediaMetadataCompat = this.f5547Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (mediaMetadataCompat == null || Build.VERSION.SDK_INT < 28) {
            return;
        }
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = mediaMetadataCompat.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww("android.media.metadata.TITLE");
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = this.f5547Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww("android.media.metadata.ARTIST");
        Intent intent = new Intent(this.f5550Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, MainActivity.class);
        intent.putExtra(NotificationUtil.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwww(), "isFormMediaNotificationManager");
        Context context = this.f5550Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        int i = 67108864 | C.BUFFER_FLAG_FIRST_SAMPLE;
        PushAutoTrackHelper.hookIntentGetActivity(context, 0, intent, i);
        PendingIntent activity = PendingIntent.getActivity(context, 0, intent, i);
        PushAutoTrackHelper.hookPendingIntentGetActivity(activity, context, 0, intent, i);
        NotificationCompat.Builder onlyAlertOnce = new NotificationCompat.Builder(this.f5550Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, "com.changdu.mobovideo.media").setContentTitle(Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2).setContentText(Wwwwwwwwwwwwwwwwwwwwwwwwwwwww3).setSmallIcon(R.mipmap.ic_launcher).setContentIntent(activity).setVisibility(1).setPriority(-1).setOnlyAlertOnce(true);
        NotificationCompat.MediaStyle mediaStyle = new NotificationCompat.MediaStyle();
        MediaSessionCompat mediaSessionCompat = this.f5548Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (mediaSessionCompat != null) {
            token = mediaSessionCompat.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        } else {
            token = null;
        }
        NotificationCompat.Builder style = onlyAlertOnce.setStyle(mediaStyle.setMediaSession(token));
        Bitmap bitmap = this.f5546Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (bitmap != null) {
            style.setLargeIcon(bitmap);
        }
        NotificationManager Wwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwww();
        Notification build = style.build();
        Wwwwwwwwwwwwwwwwwwwwww2.notify(10086, build);
        PushAutoTrackHelper.onNotify(Wwwwwwwwwwwwwwwwwwwwww2, 10086, build);
    }

    public final void Wwwwwwwwwwwwwwww(boolean z) {
        int i;
        float f;
        if (this.f5548Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
            return;
        }
        this.f5545Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = z;
        if (z) {
            i = 3;
        } else {
            i = 2;
        }
        try {
            PlaybackStateCompat.Builder builder = new PlaybackStateCompat.Builder();
            long Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f5548Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (z) {
                f = 1.0f;
            } else {
                f = 0.0f;
            }
            PlaybackStateCompat.Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = builder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i, Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2, f).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwww());
            MediaSessionCompat mediaSessionCompat = this.f5548Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (mediaSessionCompat != null) {
                mediaSessionCompat.Wwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            }
        } catch (Throwable unused) {
        }
        Wwwwwwwwwwwwwww();
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0090, code lost:
        if (kotlinx.coroutines.BuildersKt.withContext(r0, r8, r1) == r2) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00af, code lost:
        if (kotlinx.coroutines.BuildersKt.withContext(r0, r8, r1) != r2) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00c5, code lost:
        if (kotlinx.coroutines.BuildersKt.withContext(r0, r3, r1) == r2) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00c7, code lost:
        return r2;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0028  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0050  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object Wwwwwwwwwwwwwwwww(@org.jetbrains.annotations.NotNull java.lang.String r15, @org.jetbrains.annotations.NotNull java.lang.String r16, double r17, double r19, float r21, @org.jetbrains.annotations.Nullable java.lang.String r22, @org.jetbrains.annotations.NotNull kotlin.coroutines.Continuation<? super java.lang.Boolean> r23) {
        /*
            r14 = this;
            r0 = r23
            boolean r1 = r0 instanceof com.changdu.mobovideo.media.MediaNotificationManager$setNowPlayingInfo$1
            if (r1 == 0) goto L15
            r1 = r0
            com.changdu.mobovideo.media.MediaNotificationManager$setNowPlayingInfo$1 r1 = (com.changdu.mobovideo.media.MediaNotificationManager$setNowPlayingInfo$1) r1
            int r2 = r1.label
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = r2 & r3
            if (r4 == 0) goto L15
            int r2 = r2 - r3
            r1.label = r2
            goto L1a
        L15:
            com.changdu.mobovideo.media.MediaNotificationManager$setNowPlayingInfo$1 r1 = new com.changdu.mobovideo.media.MediaNotificationManager$setNowPlayingInfo$1
            r1.<init>(r14, r0)
        L1a:
            java.lang.Object r0 = r1.result
            java.lang.Object r2 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r3 = r1.label
            r4 = 3
            r5 = 2
            r6 = 1
            r7 = 0
            if (r3 == 0) goto L50
            if (r3 == r6) goto L44
            if (r3 == r5) goto L3b
            if (r3 != r4) goto L33
            kotlin.ResultKt.throwOnFailure(r0)
            goto Lc8
        L33:
            java.lang.IllegalStateException r15 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r15.<init>(r0)
            throw r15
        L3b:
            java.lang.Object r15 = r1.L$0
            android.support.v4.media.MediaMetadataCompat$Builder r15 = (android.support.v4.media.MediaMetadataCompat.Builder) r15
            kotlin.ResultKt.throwOnFailure(r0)
            goto Lb2
        L44:
            java.lang.Object r15 = r1.L$1
            android.support.v4.media.MediaMetadataCompat$Builder r15 = (android.support.v4.media.MediaMetadataCompat.Builder) r15
            java.lang.Object r3 = r1.L$0
            java.lang.String r3 = (java.lang.String) r3
            kotlin.ResultKt.throwOnFailure(r0)
            goto L93
        L50:
            kotlin.ResultKt.throwOnFailure(r0)
            r14.Wwwwwwwwwwwwwwwwwwww()
            android.support.v4.media.MediaMetadataCompat$Builder r0 = new android.support.v4.media.MediaMetadataCompat$Builder
            r0.<init>()
            java.lang.String r3 = "android.media.metadata.TITLE"
            android.support.v4.media.MediaMetadataCompat$Builder r15 = r0.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r3, r15)
            java.lang.String r0 = "android.media.metadata.ARTIST"
            r3 = r16
            android.support.v4.media.MediaMetadataCompat$Builder r15 = r15.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r0, r3)
            r0 = 1000(0x3e8, float:1.401E-42)
            double r8 = (double) r0
            double r8 = r8 * r17
            long r8 = (long) r8
            java.lang.String r0 = "android.media.metadata.DURATION"
            android.support.v4.media.MediaMetadataCompat$Builder r15 = r15.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r0, r8)
            kotlinx.coroutines.MainCoroutineDispatcher r0 = kotlinx.coroutines.Dispatchers.getMain()
            com.changdu.mobovideo.media.MediaNotificationManager$setNowPlayingInfo$2 r8 = new com.changdu.mobovideo.media.MediaNotificationManager$setNowPlayingInfo$2
            r13 = 0
            r9 = r14
            r10 = r19
            r12 = r21
            r8.<init>(r9, r10, r12, r13)
            r3 = r22
            r1.L$0 = r3
            r1.L$1 = r15
            r1.label = r6
            java.lang.Object r0 = kotlinx.coroutines.BuildersKt.withContext(r0, r8, r1)
            if (r0 != r2) goto L93
            goto Lc7
        L93:
            if (r3 == 0) goto Lb2
            int r0 = r3.length()
            if (r0 != 0) goto L9c
            goto Lb2
        L9c:
            kotlinx.coroutines.CoroutineDispatcher r0 = kotlinx.coroutines.Dispatchers.getIO()
            com.changdu.mobovideo.media.MediaNotificationManager$setNowPlayingInfo$3 r8 = new com.changdu.mobovideo.media.MediaNotificationManager$setNowPlayingInfo$3
            r8.<init>(r3, r14, r15, r7)
            r1.L$0 = r15
            r1.L$1 = r7
            r1.label = r5
            java.lang.Object r0 = kotlinx.coroutines.BuildersKt.withContext(r0, r8, r1)
            if (r0 != r2) goto Lb2
            goto Lc7
        Lb2:
            kotlinx.coroutines.MainCoroutineDispatcher r0 = kotlinx.coroutines.Dispatchers.getMain()
            com.changdu.mobovideo.media.MediaNotificationManager$setNowPlayingInfo$4 r3 = new com.changdu.mobovideo.media.MediaNotificationManager$setNowPlayingInfo$4
            r3.<init>(r14, r15, r7)
            r1.L$0 = r7
            r1.L$1 = r7
            r1.label = r4
            java.lang.Object r15 = kotlinx.coroutines.BuildersKt.withContext(r0, r3, r1)
            if (r15 != r2) goto Lc8
        Lc7:
            return r2
        Lc8:
            java.lang.Boolean r15 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r6)
            return r15
        */
        throw new UnsupportedOperationException("Method not decompiled: com.changdu.mobovideo.media.MediaNotificationManager.Wwwwwwwwwwwwwwwww(java.lang.String, java.lang.String, double, double, float, java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final void Wwwwwwwwwwwwwwwwww() {
        Wwwwwwwwwwwwwwwwwwwwww().cancel(10086);
        MediaSessionCompat mediaSessionCompat = this.f5548Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (mediaSessionCompat != null) {
            mediaSessionCompat.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        this.f5548Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = null;
        f5543Wwwwwwwwwwwwwwwwwwwwwwwwwww = null;
    }

    public final void Wwwwwwwwwwwwwwwwwwww() {
        if (this.f5548Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww != null) {
            return;
        }
        MediaSessionCompat mediaSessionCompat = new MediaSessionCompat(this.f5550Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, "MediaNotificationManager");
        mediaSessionCompat.Wwwwwwwwwwwwwwwwwwwwwwwwww(3);
        mediaSessionCompat.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(new MediaSessionCompat.Callback() { // from class: com.changdu.mobovideo.media.MediaNotificationManager$initMediaSession$1$1
            @Override // android.support.v4.media.session.MediaSessionCompat.Callback
            public void Wwwwwwww() {
                MethodChannel methodChannel;
                methodChannel = MediaNotificationManager.this.f5544Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
                if (methodChannel != null) {
                    methodChannel.invokeMethod("remoteControlPreviousTrack", null);
                }
            }

            @Override // android.support.v4.media.session.MediaSessionCompat.Callback
            public void Wwwwwwwww() {
                MethodChannel methodChannel;
                methodChannel = MediaNotificationManager.this.f5544Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
                if (methodChannel != null) {
                    methodChannel.invokeMethod("remoteControlNextTrack", null);
                }
            }

            @Override // android.support.v4.media.session.MediaSessionCompat.Callback
            public void Wwwwwwwwwwwwwwww(long j) {
                MethodChannel methodChannel;
                methodChannel = MediaNotificationManager.this.f5544Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
                if (methodChannel != null) {
                    methodChannel.invokeMethod("remoteControlChangePosition", Double.valueOf(j / 1000.0d));
                }
            }

            @Override // android.support.v4.media.session.MediaSessionCompat.Callback
            public void Wwwwwwwwwwwwwwwww() {
                MethodChannel methodChannel;
                methodChannel = MediaNotificationManager.this.f5544Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
                if (methodChannel != null) {
                    methodChannel.invokeMethod("remoteControlSeekBackward", null);
                }
            }

            @Override // android.support.v4.media.session.MediaSessionCompat.Callback
            public void Wwwwwwwwwwwwwwwwwwwwwwwwww() {
                MethodChannel methodChannel;
                methodChannel = MediaNotificationManager.this.f5544Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
                if (methodChannel != null) {
                    methodChannel.invokeMethod("remoteControlPlay", null);
                }
            }

            @Override // android.support.v4.media.session.MediaSessionCompat.Callback
            public void Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
                MethodChannel methodChannel;
                methodChannel = MediaNotificationManager.this.f5544Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
                if (methodChannel != null) {
                    methodChannel.invokeMethod("remoteControlPause", null);
                }
            }

            @Override // android.support.v4.media.session.MediaSessionCompat.Callback
            public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
                MethodChannel methodChannel;
                methodChannel = MediaNotificationManager.this.f5544Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
                if (methodChannel != null) {
                    methodChannel.invokeMethod("remoteControlSeekForward", null);
                }
            }
        });
        mediaSessionCompat.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(true);
        this.f5548Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = mediaSessionCompat;
    }

    public final void Wwwwwwwwwwwwwwwwwwwww(@NotNull MethodChannel methodChannel) {
        this.f5544Wwwwwwwwwwwwwwwwwwwwwwwwwwww = methodChannel;
        Wwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public final NotificationManager Wwwwwwwwwwwwwwwwwwwwww() {
        return (NotificationManager) this.f5549Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getValue();
    }

    public final long Wwwwwwwwwwwwwwwwwwwwwww() {
        return 895L;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwww(MediaMetadataCompat.Builder builder) {
        MediaMetadataCompat Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = builder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        this.f5547Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        MediaSessionCompat mediaSessionCompat = this.f5548Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (mediaSessionCompat != null) {
            mediaSessionCompat.Wwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        }
        Wwwwwwwwwwwwwww();
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwww() {
        if (Build.VERSION.SDK_INT >= 26) {
            Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            NotificationChannel Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("com.changdu.mobovideo.media", "Media Playback", 2);
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.setDescription("Media playback controls");
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.setShowBadge(false);
            Wwwwwwwwwwwwwwwwwwwwww().createNotificationChannel(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwww() {
        this.f5547Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = null;
        this.f5546Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = null;
        Wwwwwwwwwwwwwwwwwwwwww().cancel(10086);
        MediaSessionCompat mediaSessionCompat = this.f5548Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (mediaSessionCompat != null) {
            mediaSessionCompat.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(false);
        }
        MediaSessionCompat mediaSessionCompat2 = this.f5548Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (mediaSessionCompat2 != null) {
            mediaSessionCompat2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        this.f5548Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = null;
    }
}
