.class Lcom/tencent/vod/flutter/SuperPlayerPlugin$1;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/tencent/vod/flutter/FTXAudioManager$AudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/vod/flutter/SuperPlayerPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/vod/flutter/SuperPlayerPlugin;


# direct methods
.method public constructor <init>(Lcom/tencent/vod/flutter/SuperPlayerPlugin;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/SuperPlayerPlugin$1;->this$0:Lcom/tencent/vod/flutter/SuperPlayerPlugin;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAudioFocusPause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/SuperPlayerPlugin$1;->this$0:Lcom/tencent/vod/flutter/SuperPlayerPlugin;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tencent/vod/flutter/SuperPlayerPlugin;->onHandleAudioFocusPause()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onAudioFocusPlay()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/SuperPlayerPlugin$1;->this$0:Lcom/tencent/vod/flutter/SuperPlayerPlugin;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tencent/vod/flutter/SuperPlayerPlugin;->onHandleAudioFocusPlay()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
