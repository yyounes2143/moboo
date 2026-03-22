.class Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender$1;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
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
    iput-object p1, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender$1;->this$0:Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;

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
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender$1;->this$0:Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->access$000(Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender$1;->this$0:Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->access$100(Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;)Ljava/util/concurrent/locks/Lock;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender$1;->this$0:Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->access$200(Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender$1;->this$0:Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;

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

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender$1;->this$0:Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    invoke-static {v0, v1}, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->access$002(Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;Z)Z

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender$1;->this$0:Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->refreshRender()V

    .line 42
    .line 43
    .line 44
    return-void
.end method
