.class public final Lcom/changdu/mobovideo/media/MediaNotificationManager$initMediaSession$1$1;
.super Landroid/support/v4/media/session/MediaSessionCompat$Callback;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/changdu/mobovideo/media/MediaNotificationManager;->Wwwwwwwwwwwwwwwwwwww()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0006*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0004J\u0017\u0010\n\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\u000c\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\u0004J\u000f\u0010\r\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\r\u0010\u0004\u00a8\u0006\u000e"
    }
    d2 = {
        "com/changdu/mobovideo/media/MediaNotificationManager$initMediaSession$1$1",
        "Landroid/support/v4/media/session/MediaSessionCompat$Callback;",
        "",
        "Wwwwwwwwwwwwwwwwwwwwwwwwww",
        "()V",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Wwwwwwwww",
        "Wwwwwwww",
        "",
        "pos",
        "Wwwwwwwwwwwwwwww",
        "(J)V",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Wwwwwwwwwwwwwwwww",
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


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/changdu/mobovideo/media/MediaNotificationManager;


# direct methods
.method public constructor <init>(Lcom/changdu/mobovideo/media/MediaNotificationManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/changdu/mobovideo/media/MediaNotificationManager$initMediaSession$1$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/changdu/mobovideo/media/MediaNotificationManager;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public Wwwwwwww()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/changdu/mobovideo/media/MediaNotificationManager$initMediaSession$1$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/changdu/mobovideo/media/MediaNotificationManager;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/changdu/mobovideo/media/MediaNotificationManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/media/MediaNotificationManager;)Lio/flutter/plugin/common/MethodChannel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v1, "remoteControlPreviousTrack"

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, v1, v2}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public Wwwwwwwww()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/changdu/mobovideo/media/MediaNotificationManager$initMediaSession$1$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/changdu/mobovideo/media/MediaNotificationManager;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/changdu/mobovideo/media/MediaNotificationManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/media/MediaNotificationManager;)Lio/flutter/plugin/common/MethodChannel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v1, "remoteControlNextTrack"

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, v1, v2}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public Wwwwwwwwwwwwwwww(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/changdu/mobovideo/media/MediaNotificationManager$initMediaSession$1$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/changdu/mobovideo/media/MediaNotificationManager;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/changdu/mobovideo/media/MediaNotificationManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/media/MediaNotificationManager;)Lio/flutter/plugin/common/MethodChannel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    long-to-double p1, p1

    .line 10
    const-wide v1, 0x408f400000000000L    # 1000.0

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    div-double/2addr p1, v1

    .line 16
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-string p2, "remoteControlChangePosition"

    .line 21
    .line 22
    invoke-virtual {v0, p2, p1}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public Wwwwwwwwwwwwwwwww()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/changdu/mobovideo/media/MediaNotificationManager$initMediaSession$1$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/changdu/mobovideo/media/MediaNotificationManager;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/changdu/mobovideo/media/MediaNotificationManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/media/MediaNotificationManager;)Lio/flutter/plugin/common/MethodChannel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v1, "remoteControlSeekBackward"

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, v1, v2}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwww()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/changdu/mobovideo/media/MediaNotificationManager$initMediaSession$1$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/changdu/mobovideo/media/MediaNotificationManager;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/changdu/mobovideo/media/MediaNotificationManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/media/MediaNotificationManager;)Lio/flutter/plugin/common/MethodChannel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v1, "remoteControlPlay"

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, v1, v2}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwww()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/changdu/mobovideo/media/MediaNotificationManager$initMediaSession$1$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/changdu/mobovideo/media/MediaNotificationManager;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/changdu/mobovideo/media/MediaNotificationManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/media/MediaNotificationManager;)Lio/flutter/plugin/common/MethodChannel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v1, "remoteControlPause"

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, v1, v2}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/changdu/mobovideo/media/MediaNotificationManager$initMediaSession$1$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/changdu/mobovideo/media/MediaNotificationManager;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/changdu/mobovideo/media/MediaNotificationManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/media/MediaNotificationManager;)Lio/flutter/plugin/common/MethodChannel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v1, "remoteControlSeekForward"

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, v1, v2}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method
