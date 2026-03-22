.class Lcom/tencent/vod/flutter/FTXAudioManager$1;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/vod/flutter/FTXAudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/vod/flutter/FTXAudioManager;


# direct methods
.method public constructor <init>(Lcom/tencent/vod/flutter/FTXAudioManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/FTXAudioManager$1;->this$0:Lcom/tencent/vod/flutter/FTXAudioManager;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    new-instance p1, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 11
    .line 12
    .line 13
    new-instance v0, Lcom/tencent/vod/flutter/FTXAudioManager$1$1;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/tencent/vod/flutter/FTXAudioManager$1$1;-><init>(Lcom/tencent/vod/flutter/FTXAudioManager$1;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    const/4 v0, -0x2

    .line 23
    if-ne p1, v0, :cond_1

    .line 24
    .line 25
    new-instance p1, Landroid/os/Handler;

    .line 26
    .line 27
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 32
    .line 33
    .line 34
    new-instance v0, Lcom/tencent/vod/flutter/FTXAudioManager$1$2;

    .line 35
    .line 36
    invoke-direct {v0, p0}, Lcom/tencent/vod/flutter/FTXAudioManager$1$2;-><init>(Lcom/tencent/vod/flutter/FTXAudioManager$1;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_1
    const/4 v0, -0x3

    .line 44
    if-ne p1, v0, :cond_2

    .line 45
    .line 46
    new-instance p1, Landroid/os/Handler;

    .line 47
    .line 48
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 53
    .line 54
    .line 55
    new-instance v0, Lcom/tencent/vod/flutter/FTXAudioManager$1$3;

    .line 56
    .line 57
    invoke-direct {v0, p0}, Lcom/tencent/vod/flutter/FTXAudioManager$1$3;-><init>(Lcom/tencent/vod/flutter/FTXAudioManager$1;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_2
    const/4 v0, 0x1

    .line 65
    if-ne p1, v0, :cond_3

    .line 66
    .line 67
    new-instance p1, Landroid/os/Handler;

    .line 68
    .line 69
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 74
    .line 75
    .line 76
    new-instance v0, Lcom/tencent/vod/flutter/FTXAudioManager$1$4;

    .line 77
    .line 78
    invoke-direct {v0, p0}, Lcom/tencent/vod/flutter/FTXAudioManager$1$4;-><init>(Lcom/tencent/vod/flutter/FTXAudioManager$1;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 82
    .line 83
    .line 84
    :cond_3
    return-void
.end method
