.class public final Lcom/changdu/mobovideo/media/MediaNotificationManager;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/changdu/mobovideo/media/MediaNotificationManager$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u0000 D2\u00020\u0001:\u0001DB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0015\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\t\u0010\nJB\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u00112\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u000bH\u0086@\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J%\u0010\u0017\u001a\u00020\u00082\u0006\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u000f\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0015\u0010\u001a\u001a\u00020\u00082\u0006\u0010\u0019\u001a\u00020\u0014\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\r\u0010\u001c\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\r\u0010\u001e\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u001e\u0010\u001dJ\u0017\u0010!\u001a\u00020\u00082\u0006\u0010 \u001a\u00020\u001fH\u0002\u00a2\u0006\u0004\u0008!\u0010\"J\u000f\u0010#\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008#\u0010\u001dJ\u000f\u0010$\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008$\u0010\u001dJ\u001f\u0010%\u001a\u00020\u00082\u0006\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u0011H\u0002\u00a2\u0006\u0004\u0008%\u0010&J\u000f\u0010(\u001a\u00020\'H\u0002\u00a2\u0006\u0004\u0008(\u0010)J\u000f\u0010*\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008*\u0010\u001dR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008+\u0010,R\u001b\u00102\u001a\u00020-8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008.\u0010/\u001a\u0004\u00080\u00101R\u0018\u00106\u001a\u0004\u0018\u0001038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00084\u00105R\u0018\u0010:\u001a\u0004\u0018\u0001078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00088\u00109R\u0018\u0010>\u001a\u0004\u0018\u00010;8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008<\u0010=R\u0016\u0010\u0019\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008?\u0010@R\u0018\u0010C\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008A\u0010B\u00a8\u0006E"
    }
    d2 = {
        "Lcom/changdu/mobovideo/media/MediaNotificationManager;",
        "",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Lio/flutter/plugin/common/MethodChannel;",
        "channel",
        "",
        "Wwwwwwwwwwwwwwwwwwwww",
        "(Lio/flutter/plugin/common/MethodChannel;)V",
        "",
        "title",
        "artist",
        "",
        "duration",
        "position",
        "",
        "playbackRate",
        "imageUrl",
        "",
        "Wwwwwwwwwwwwwwwww",
        "(Ljava/lang/String;Ljava/lang/String;DDFLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Wwwwwwwwwwwwww",
        "(DFD)V",
        "isPlaying",
        "Wwwwwwwwwwwwwwww",
        "(Z)V",
        "Wwwwwwwwwwwwwwwwwwwwwwwwww",
        "()V",
        "Wwwwwwwwwwwwwwwwww",
        "Landroid/support/v4/media/MediaMetadataCompat$Builder;",
        "metadataBuilder",
        "Wwwwwwwwwwwwwwwwwwwwwwww",
        "(Landroid/support/v4/media/MediaMetadataCompat$Builder;)V",
        "Wwwwwwwwwwwwwwwwwwwwwwwww",
        "Wwwwwwwwwwwwwwwwwwww",
        "Wwwwwwwwwwwww",
        "(DF)V",
        "",
        "Wwwwwwwwwwwwwwwwwwwwwww",
        "()J",
        "Wwwwwwwwwwwwwww",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Landroid/content/Context;",
        "Landroid/app/NotificationManager;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Lkotlin/Lazy;",
        "Wwwwwwwwwwwwwwwwwwwwww",
        "()Landroid/app/NotificationManager;",
        "notificationManager",
        "Landroid/support/v4/media/session/MediaSessionCompat;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Landroid/support/v4/media/session/MediaSessionCompat;",
        "mediaSession",
        "Landroid/support/v4/media/MediaMetadataCompat;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Landroid/support/v4/media/MediaMetadataCompat;",
        "currentMetadata",
        "Landroid/graphics/Bitmap;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Landroid/graphics/Bitmap;",
        "artworkBitmap",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Z",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Lio/flutter/plugin/common/MethodChannel;",
        "methodChannel",
        "Companion",
        "app_outsideRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/changdu/mobovideo/media/MediaNotificationManager$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static volatile Wwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/changdu/mobovideo/media/MediaNotificationManager;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# instance fields
.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/MethodChannel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/graphics/Bitmap;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/support/v4/media/MediaMetadataCompat;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/support/v4/media/session/MediaSessionCompat;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/changdu/mobovideo/media/MediaNotificationManager$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/changdu/mobovideo/media/MediaNotificationManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/changdu/mobovideo/media/MediaNotificationManager;->Companion:Lcom/changdu/mobovideo/media/MediaNotificationManager$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/changdu/mobovideo/media/MediaNotificationManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 5
    .line 6
    new-instance p1, Lcom/changdu/mobovideo/media/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    .line 7
    .line 8
    invoke-direct {p1, p0}, Lcom/changdu/mobovideo/media/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;-><init>(Lcom/changdu/mobovideo/media/MediaNotificationManager;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/changdu/mobovideo/media/MediaNotificationManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lkotlin/Lazy;

    .line 16
    .line 17
    return-void
.end method

.method public static final Wwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/media/MediaNotificationManager;)Landroid/app/NotificationManager;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/changdu/mobovideo/media/MediaNotificationManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 2
    .line 3
    const-string v0, "notification"

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroid/app/NotificationManager;

    .line 10
    .line 11
    return-object p0
.end method

.method public static final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/media/MediaNotificationManager;DF)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/changdu/mobovideo/media/MediaNotificationManager;->Wwwwwwwwwwwww(DF)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/media/MediaNotificationManager;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/changdu/mobovideo/media/MediaNotificationManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/changdu/mobovideo/media/MediaNotificationManager;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/media/MediaNotificationManager;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/changdu/mobovideo/media/MediaNotificationManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/media/MediaNotificationManager;)Lio/flutter/plugin/common/MethodChannel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/changdu/mobovideo/media/MediaNotificationManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/MethodChannel;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/changdu/mobovideo/media/MediaNotificationManager;
    .locals 1

    .line 1
    sget-object v0, Lcom/changdu/mobovideo/media/MediaNotificationManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/changdu/mobovideo/media/MediaNotificationManager;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/media/MediaNotificationManager;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/changdu/mobovideo/media/MediaNotificationManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/media/MediaNotificationManager;Landroid/support/v4/media/MediaMetadataCompat$Builder;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/changdu/mobovideo/media/MediaNotificationManager;->Wwwwwwwwwwwwwwwwwwwwwwww(Landroid/support/v4/media/MediaMetadataCompat$Builder;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/media/MediaNotificationManager;)Landroid/app/NotificationManager;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/changdu/mobovideo/media/MediaNotificationManager;->Wwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/media/MediaNotificationManager;)Landroid/app/NotificationManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public final Wwwwwwwwwwwww(DF)V
    .locals 3

    .line 1
    new-instance v0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0x3e8

    .line 7
    .line 8
    int-to-double v1, v1

    .line 9
    mul-double/2addr p1, v1

    .line 10
    double-to-long p1, p1

    .line 11
    const/4 v1, 0x3

    .line 12
    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(IJF)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p0}, Lcom/changdu/mobovideo/media/MediaNotificationManager;->Wwwwwwwwwwwwwwwwwwwwwww()J

    .line 17
    .line 18
    .line 19
    move-result-wide p2

    .line 20
    invoke-virtual {p1, p2, p3}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(J)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iget-object p2, p0, Lcom/changdu/mobovideo/media/MediaNotificationManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 25
    .line 26
    if-eqz p2, :cond_0

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p2, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->Wwwwwwwwwwwwwwwwwwwwwwww(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method public final Wwwwwwwwwwwwww(DFD)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/changdu/mobovideo/media/MediaNotificationManager;->Wwwwwwwwwwwww(DF)V

    .line 2
    .line 3
    .line 4
    const-wide/16 p1, 0x0

    .line 5
    .line 6
    cmpl-double p1, p4, p1

    .line 7
    .line 8
    if-lez p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/changdu/mobovideo/media/MediaNotificationManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/support/v4/media/MediaMetadataCompat;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    new-instance p2, Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 15
    .line 16
    invoke-direct {p2, p1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;-><init>(Landroid/support/v4/media/MediaMetadataCompat;)V

    .line 17
    .line 18
    .line 19
    const/16 p1, 0x3e8

    .line 20
    .line 21
    int-to-double v0, p1

    .line 22
    mul-double/2addr p4, v0

    .line 23
    double-to-long p3, p4

    .line 24
    const-string p1, "android.media.metadata.DURATION"

    .line 25
    .line 26
    invoke-virtual {p2, p1, p3, p4}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;J)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/support/v4/media/MediaMetadataCompat;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Lcom/changdu/mobovideo/media/MediaNotificationManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/support/v4/media/MediaMetadataCompat;

    .line 35
    .line 36
    iget-object p2, p0, Lcom/changdu/mobovideo/media/MediaNotificationManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 37
    .line 38
    if-eqz p2, :cond_0

    .line 39
    .line 40
    invoke-virtual {p2, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->Wwwwwwwwwwwwwwwwwwwwwwwww(Landroid/support/v4/media/MediaMetadataCompat;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    invoke-virtual {p0}, Lcom/changdu/mobovideo/media/MediaNotificationManager;->Wwwwwwwwwwwwwww()V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final Wwwwwwwwwwwwwww()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/changdu/mobovideo/media/MediaNotificationManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/support/v4/media/MediaMetadataCompat;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    .line 8
    const/16 v2, 0x1c

    .line 9
    .line 10
    if-ge v1, v2, :cond_1

    .line 11
    .line 12
    :goto_0
    return-void

    .line 13
    :cond_1
    const-string v1, "android.media.metadata.TITLE"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaMetadataCompat;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/changdu/mobovideo/media/MediaNotificationManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/support/v4/media/MediaMetadataCompat;

    .line 20
    .line 21
    const-string v2, "android.media.metadata.ARTIST"

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Landroid/support/v4/media/MediaMetadataCompat;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    new-instance v2, Landroid/content/Intent;

    .line 28
    .line 29
    iget-object v3, p0, Lcom/changdu/mobovideo/media/MediaNotificationManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 30
    .line 31
    const-class v4, Lcom/changdu/mobovideo/MainActivity;

    .line 32
    .line 33
    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 34
    .line 35
    .line 36
    sget-object v3, Lcom/changdu/mobovideo/utils/NotificationUtil;->INSTANCE:Lcom/changdu/mobovideo/utils/NotificationUtil;

    .line 37
    .line 38
    invoke-virtual {v3}, Lcom/changdu/mobovideo/utils/NotificationUtil;->Wwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    const-string v4, "isFormMediaNotificationManager"

    .line 43
    .line 44
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    .line 46
    .line 47
    iget-object v3, p0, Lcom/changdu/mobovideo/media/MediaNotificationManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 48
    .line 49
    const/high16 v4, 0x4000000

    .line 50
    .line 51
    const/high16 v5, 0x8000000

    .line 52
    .line 53
    or-int/2addr v4, v5

    .line 54
    const/4 v5, 0x0

    .line 55
    invoke-static {v3, v5, v2, v4}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->hookIntentGetActivity(Landroid/content/Context;ILandroid/content/Intent;I)V

    .line 56
    .line 57
    .line 58
    invoke-static {v3, v5, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    invoke-static {v6, v3, v5, v2, v4}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->hookPendingIntentGetActivity(Landroid/app/PendingIntent;Landroid/content/Context;ILandroid/content/Intent;I)V

    .line 63
    .line 64
    .line 65
    new-instance v2, Landroidx/core/app/NotificationCompat$Builder;

    .line 66
    .line 67
    iget-object v3, p0, Lcom/changdu/mobovideo/media/MediaNotificationManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 68
    .line 69
    const-string v4, "com.changdu.mobovideo.media"

    .line 70
    .line 71
    invoke-direct {v2, v3, v4}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    const/high16 v1, 0x7f0e0000

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {v0, v6}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    const/4 v1, 0x1

    .line 93
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setVisibility(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    const/4 v2, -0x1

    .line 98
    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    new-instance v1, Landroidx/media/app/NotificationCompat$MediaStyle;

    .line 107
    .line 108
    invoke-direct {v1}, Landroidx/media/app/NotificationCompat$MediaStyle;-><init>()V

    .line 109
    .line 110
    .line 111
    iget-object v2, p0, Lcom/changdu/mobovideo/media/MediaNotificationManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 112
    .line 113
    if-eqz v2, :cond_2

    .line 114
    .line 115
    invoke-virtual {v2}, Landroid/support/v4/media/session/MediaSessionCompat;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    goto :goto_1

    .line 120
    :cond_2
    const/4 v2, 0x0

    .line 121
    :goto_1
    invoke-virtual {v1, v2}, Landroidx/media/app/NotificationCompat$MediaStyle;->setMediaSession(Landroid/support/v4/media/session/MediaSessionCompat$Token;)Landroidx/media/app/NotificationCompat$MediaStyle;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    iget-object v1, p0, Lcom/changdu/mobovideo/media/MediaNotificationManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/graphics/Bitmap;

    .line 130
    .line 131
    if-eqz v1, :cond_3

    .line 132
    .line 133
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    .line 134
    .line 135
    .line 136
    :cond_3
    invoke-virtual {p0}, Lcom/changdu/mobovideo/media/MediaNotificationManager;->Wwwwwwwwwwwwwwwwwwwwww()Landroid/app/NotificationManager;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    const/16 v2, 0x2766

    .line 145
    .line 146
    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 147
    .line 148
    .line 149
    invoke-static {v1, v2, v0}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->onNotify(Landroid/app/NotificationManager;ILandroid/app/Notification;)V

    .line 150
    .line 151
    .line 152
    return-void
.end method

.method public final Wwwwwwwwwwwwwwww(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/changdu/mobovideo/media/MediaNotificationManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Lcom/changdu/mobovideo/media/MediaNotificationManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    const/4 v0, 0x3

    .line 11
    goto :goto_0

    .line 12
    :cond_1
    const/4 v0, 0x2

    .line 13
    :goto_0
    :try_start_0
    new-instance v1, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    .line 14
    .line 15
    invoke-direct {v1}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;-><init>()V

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Lcom/changdu/mobovideo/media/MediaNotificationManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 19
    .line 20
    invoke-virtual {v2}, Landroid/support/v4/media/session/MediaSessionCompat;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/support/v4/media/session/MediaControllerCompat;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v2}, Landroid/support/v4/media/session/MediaControllerCompat;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v2}, Landroid/support/v4/media/session/PlaybackStateCompat;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()J

    .line 29
    .line 30
    .line 31
    move-result-wide v2

    .line 32
    if-eqz p1, :cond_2

    .line 33
    .line 34
    const/high16 p1, 0x3f800000    # 1.0f

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    const/4 p1, 0x0

    .line 38
    :goto_1
    invoke-virtual {v1, v0, v2, v3, p1}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(IJF)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p0}, Lcom/changdu/mobovideo/media/MediaNotificationManager;->Wwwwwwwwwwwwwwwwwwwwwww()J

    .line 43
    .line 44
    .line 45
    move-result-wide v0

    .line 46
    invoke-virtual {p1, v0, v1}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(J)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iget-object v0, p0, Lcom/changdu/mobovideo/media/MediaNotificationManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 51
    .line 52
    if-eqz v0, :cond_3

    .line 53
    .line 54
    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->Wwwwwwwwwwwwwwwwwwwwwwww(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .line 60
    .line 61
    :catchall_0
    :cond_3
    invoke-virtual {p0}, Lcom/changdu/mobovideo/media/MediaNotificationManager;->Wwwwwwwwwwwwwww()V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwww(Ljava/lang/String;Ljava/lang/String;DDFLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 14
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "DDF",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    move-object/from16 v0, p9

    .line 2
    .line 3
    instance-of v1, v0, Lcom/changdu/mobovideo/media/MediaNotificationManager$setNowPlayingInfo$1;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Lcom/changdu/mobovideo/media/MediaNotificationManager$setNowPlayingInfo$1;

    .line 9
    .line 10
    iget v2, v1, Lcom/changdu/mobovideo/media/MediaNotificationManager$setNowPlayingInfo$1;->label:I

    .line 11
    .line 12
    const/high16 v3, -0x80000000

    .line 13
    .line 14
    and-int v4, v2, v3

    .line 15
    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    sub-int/2addr v2, v3

    .line 19
    iput v2, v1, Lcom/changdu/mobovideo/media/MediaNotificationManager$setNowPlayingInfo$1;->label:I

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v1, Lcom/changdu/mobovideo/media/MediaNotificationManager$setNowPlayingInfo$1;

    .line 23
    .line 24
    invoke-direct {v1, p0, v0}, Lcom/changdu/mobovideo/media/MediaNotificationManager$setNowPlayingInfo$1;-><init>(Lcom/changdu/mobovideo/media/MediaNotificationManager;Lkotlin/coroutines/Continuation;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    iget-object v0, v1, Lcom/changdu/mobovideo/media/MediaNotificationManager$setNowPlayingInfo$1;->result:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    iget v3, v1, Lcom/changdu/mobovideo/media/MediaNotificationManager$setNowPlayingInfo$1;->label:I

    .line 34
    .line 35
    const/4 v4, 0x3

    .line 36
    const/4 v5, 0x2

    .line 37
    const/4 v6, 0x1

    .line 38
    const/4 v7, 0x0

    .line 39
    if-eqz v3, :cond_4

    .line 40
    .line 41
    if-eq v3, v6, :cond_3

    .line 42
    .line 43
    if-eq v3, v5, :cond_2

    .line 44
    .line 45
    if-ne v3, v4, :cond_1

    .line 46
    .line 47
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    goto/16 :goto_4

    .line 51
    .line 52
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 53
    .line 54
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 55
    .line 56
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p1

    .line 60
    :cond_2
    iget-object p1, v1, Lcom/changdu/mobovideo/media/MediaNotificationManager$setNowPlayingInfo$1;->L$0:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast p1, Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 63
    .line 64
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    goto/16 :goto_2

    .line 68
    .line 69
    :cond_3
    iget-object p1, v1, Lcom/changdu/mobovideo/media/MediaNotificationManager$setNowPlayingInfo$1;->L$1:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast p1, Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 72
    .line 73
    iget-object v3, v1, Lcom/changdu/mobovideo/media/MediaNotificationManager$setNowPlayingInfo$1;->L$0:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v3, Ljava/lang/String;

    .line 76
    .line 77
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_4
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Lcom/changdu/mobovideo/media/MediaNotificationManager;->Wwwwwwwwwwwwwwwwwwww()V

    .line 85
    .line 86
    .line 87
    new-instance v0, Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 88
    .line 89
    invoke-direct {v0}, Landroid/support/v4/media/MediaMetadataCompat$Builder;-><init>()V

    .line 90
    .line 91
    .line 92
    const-string v3, "android.media.metadata.TITLE"

    .line 93
    .line 94
    invoke-virtual {v0, v3, p1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    const-string v0, "android.media.metadata.ARTIST"

    .line 99
    .line 100
    move-object/from16 v3, p2

    .line 101
    .line 102
    invoke-virtual {p1, v0, v3}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    const/16 v0, 0x3e8

    .line 107
    .line 108
    int-to-double v8, v0

    .line 109
    mul-double v8, v8, p3

    .line 110
    .line 111
    double-to-long v8, v8

    .line 112
    const-string v0, "android.media.metadata.DURATION"

    .line 113
    .line 114
    invoke-virtual {p1, v0, v8, v9}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;J)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    new-instance v8, Lcom/changdu/mobovideo/media/MediaNotificationManager$setNowPlayingInfo$2;

    .line 123
    .line 124
    const/4 v13, 0x0

    .line 125
    move-object v9, p0

    .line 126
    move-wide/from16 v10, p5

    .line 127
    .line 128
    move/from16 v12, p7

    .line 129
    .line 130
    invoke-direct/range {v8 .. v13}, Lcom/changdu/mobovideo/media/MediaNotificationManager$setNowPlayingInfo$2;-><init>(Lcom/changdu/mobovideo/media/MediaNotificationManager;DFLkotlin/coroutines/Continuation;)V

    .line 131
    .line 132
    .line 133
    move-object/from16 v3, p8

    .line 134
    .line 135
    iput-object v3, v1, Lcom/changdu/mobovideo/media/MediaNotificationManager$setNowPlayingInfo$1;->L$0:Ljava/lang/Object;

    .line 136
    .line 137
    iput-object p1, v1, Lcom/changdu/mobovideo/media/MediaNotificationManager$setNowPlayingInfo$1;->L$1:Ljava/lang/Object;

    .line 138
    .line 139
    iput v6, v1, Lcom/changdu/mobovideo/media/MediaNotificationManager$setNowPlayingInfo$1;->label:I

    .line 140
    .line 141
    invoke-static {v0, v8, v1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    if-ne v0, v2, :cond_5

    .line 146
    .line 147
    goto :goto_3

    .line 148
    :cond_5
    :goto_1
    if-eqz v3, :cond_7

    .line 149
    .line 150
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    if-nez v0, :cond_6

    .line 155
    .line 156
    goto :goto_2

    .line 157
    :cond_6
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    new-instance v8, Lcom/changdu/mobovideo/media/MediaNotificationManager$setNowPlayingInfo$3;

    .line 162
    .line 163
    invoke-direct {v8, v3, p0, p1, v7}, Lcom/changdu/mobovideo/media/MediaNotificationManager$setNowPlayingInfo$3;-><init>(Ljava/lang/String;Lcom/changdu/mobovideo/media/MediaNotificationManager;Landroid/support/v4/media/MediaMetadataCompat$Builder;Lkotlin/coroutines/Continuation;)V

    .line 164
    .line 165
    .line 166
    iput-object p1, v1, Lcom/changdu/mobovideo/media/MediaNotificationManager$setNowPlayingInfo$1;->L$0:Ljava/lang/Object;

    .line 167
    .line 168
    iput-object v7, v1, Lcom/changdu/mobovideo/media/MediaNotificationManager$setNowPlayingInfo$1;->L$1:Ljava/lang/Object;

    .line 169
    .line 170
    iput v5, v1, Lcom/changdu/mobovideo/media/MediaNotificationManager$setNowPlayingInfo$1;->label:I

    .line 171
    .line 172
    invoke-static {v0, v8, v1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    if-ne v0, v2, :cond_7

    .line 177
    .line 178
    goto :goto_3

    .line 179
    :cond_7
    :goto_2
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    new-instance v3, Lcom/changdu/mobovideo/media/MediaNotificationManager$setNowPlayingInfo$4;

    .line 184
    .line 185
    invoke-direct {v3, p0, p1, v7}, Lcom/changdu/mobovideo/media/MediaNotificationManager$setNowPlayingInfo$4;-><init>(Lcom/changdu/mobovideo/media/MediaNotificationManager;Landroid/support/v4/media/MediaMetadataCompat$Builder;Lkotlin/coroutines/Continuation;)V

    .line 186
    .line 187
    .line 188
    iput-object v7, v1, Lcom/changdu/mobovideo/media/MediaNotificationManager$setNowPlayingInfo$1;->L$0:Ljava/lang/Object;

    .line 189
    .line 190
    iput-object v7, v1, Lcom/changdu/mobovideo/media/MediaNotificationManager$setNowPlayingInfo$1;->L$1:Ljava/lang/Object;

    .line 191
    .line 192
    iput v4, v1, Lcom/changdu/mobovideo/media/MediaNotificationManager$setNowPlayingInfo$1;->label:I

    .line 193
    .line 194
    invoke-static {v0, v3, v1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    if-ne p1, v2, :cond_8

    .line 199
    .line 200
    :goto_3
    return-object v2

    .line 201
    :cond_8
    :goto_4
    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    return-object p1
.end method

.method public final Wwwwwwwwwwwwwwwwww()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/changdu/mobovideo/media/MediaNotificationManager;->Wwwwwwwwwwwwwwwwwwwwww()Landroid/app/NotificationManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0x2766

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/changdu/mobovideo/media/MediaNotificationManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 15
    .line 16
    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/changdu/mobovideo/media/MediaNotificationManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 19
    .line 20
    sput-object v0, Lcom/changdu/mobovideo/media/MediaNotificationManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/changdu/mobovideo/media/MediaNotificationManager;

    .line 21
    .line 22
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwww()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/changdu/mobovideo/media/MediaNotificationManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/changdu/mobovideo/media/MediaNotificationManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 9
    .line 10
    const-string v2, "MediaNotificationManager"

    .line 11
    .line 12
    invoke-direct {v0, v1, v2}, Landroid/support/v4/media/session/MediaSessionCompat;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 v1, 0x3

    .line 16
    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->Wwwwwwwwwwwwwwwwwwwwwwwwww(I)V

    .line 17
    .line 18
    .line 19
    new-instance v1, Lcom/changdu/mobovideo/media/MediaNotificationManager$initMediaSession$1$1;

    .line 20
    .line 21
    invoke-direct {v1, p0}, Lcom/changdu/mobovideo/media/MediaNotificationManager$initMediaSession$1$1;-><init>(Lcom/changdu/mobovideo/media/MediaNotificationManager;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/support/v4/media/session/MediaSessionCompat$Callback;)V

    .line 25
    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Z)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/changdu/mobovideo/media/MediaNotificationManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 32
    .line 33
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodChannel;)V
    .locals 0
    .param p1    # Lio/flutter/plugin/common/MethodChannel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/changdu/mobovideo/media/MediaNotificationManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/MethodChannel;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/changdu/mobovideo/media/MediaNotificationManager;->Wwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwww()Landroid/app/NotificationManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/changdu/mobovideo/media/MediaNotificationManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/app/NotificationManager;

    .line 8
    .line 9
    return-object v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwww()J
    .locals 2

    .line 1
    const-wide/16 v0, 0x37f

    .line 2
    .line 3
    return-wide v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwww(Landroid/support/v4/media/MediaMetadataCompat$Builder;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/support/v4/media/MediaMetadataCompat;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/changdu/mobovideo/media/MediaNotificationManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/support/v4/media/MediaMetadataCompat;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/changdu/mobovideo/media/MediaNotificationManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->Wwwwwwwwwwwwwwwwwwwwwwwww(Landroid/support/v4/media/MediaMetadataCompat;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/changdu/mobovideo/media/MediaNotificationManager;->Wwwwwwwwwwwwwww()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwww()V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {}, Landroidx/media3/common/util/Wwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 8
    .line 9
    .line 10
    const-string v0, "com.changdu.mobovideo.media"

    .line 11
    .line 12
    const-string v1, "Media Playback"

    .line 13
    .line 14
    const/4 v2, 0x2

    .line 15
    invoke-static {v0, v1, v2}, Landroidx/browser/trusted/Wwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/app/NotificationChannel;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "Media playback controls"

    .line 20
    .line 21
    invoke-static {v0, v1}, Landroidx/media3/common/util/Wwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/app/NotificationChannel;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-static {v0, v1}, Lcom/changdu/mobovideo/media/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/app/NotificationChannel;Z)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/changdu/mobovideo/media/MediaNotificationManager;->Wwwwwwwwwwwwwwwwwwwwww()Landroid/app/NotificationManager;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-static {v1, v0}, Landroidx/browser/trusted/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwww()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/changdu/mobovideo/media/MediaNotificationManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/support/v4/media/MediaMetadataCompat;

    .line 3
    .line 4
    iput-object v0, p0, Lcom/changdu/mobovideo/media/MediaNotificationManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/graphics/Bitmap;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/changdu/mobovideo/media/MediaNotificationManager;->Wwwwwwwwwwwwwwwwwwwwww()Landroid/app/NotificationManager;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const/16 v2, 0x2766

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/changdu/mobovideo/media/MediaNotificationManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-virtual {v1, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Z)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v1, p0, Lcom/changdu/mobovideo/media/MediaNotificationManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaSessionCompat;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 28
    .line 29
    .line 30
    :cond_1
    iput-object v0, p0, Lcom/changdu/mobovideo/media/MediaNotificationManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 31
    .line 32
    return-void
.end method
