.class Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender$2;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->refreshRender()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;


# direct methods
.method public constructor <init>(Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender$2;->this$0:Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender$2;->this$0:Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->access$100(Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;)Ljava/util/concurrent/locks/Lock;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :goto_0
    const/16 v1, 0x1e

    .line 12
    .line 13
    if-ge v0, v1, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender$2;->this$0:Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;

    .line 16
    .line 17
    invoke-static {v1}, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->access$200(Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;)V

    .line 18
    .line 19
    .line 20
    add-int/lit8 v0, v0, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender$2;->this$0:Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->access$100(Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;)Ljava/util/concurrent/locks/Lock;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 30
    .line 31
    .line 32
    return-void
.end method
