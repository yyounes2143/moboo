.class final synthetic Lcom/tencent/liteav/videoconsumer2/a;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/tencent/liteav/videoconsumer/a/a$a;


# instance fields
.field private final a:Lcom/tencent/liteav/videoconsumer2/HardwareVideoDecoder2;


# direct methods
.method public constructor <init>(Lcom/tencent/liteav/videoconsumer2/HardwareVideoDecoder2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer2/a;->a:Lcom/tencent/liteav/videoconsumer2/HardwareVideoDecoder2;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(IIII)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer2/a;->a:Lcom/tencent/liteav/videoconsumer2/HardwareVideoDecoder2;

    .line 2
    .line 3
    invoke-static {v0, p1, p2, p3, p4}, Lcom/tencent/liteav/videoconsumer2/HardwareVideoDecoder2;->lambda$limitMaxDecFrameBufferingInH264Sps$0(Lcom/tencent/liteav/videoconsumer2/HardwareVideoDecoder2;IIII)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
