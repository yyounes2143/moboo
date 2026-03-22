.class public final Lcom/facebook/ads/redexgen/X/mw;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/8N;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/8e;,
        Lcom/facebook/ads/redexgen/X/8d;,
        Lcom/facebook/ads/redexgen/X/mx;,
        Lcom/facebook/ads/redexgen/X/8h;,
        Lcom/facebook/ads/redexgen/X/8k;,
        Lcom/facebook/ads/redexgen/X/8f;,
        Lcom/facebook/ads/redexgen/X/8b;,
        Lcom/facebook/ads/redexgen/X/8c;,
        Lcom/facebook/ads/redexgen/X/8a;,
        Lcom/facebook/ads/redexgen/X/8n;,
        Lcom/facebook/ads/androidx/media3/exoplayer/audio/DefaultAudioSink$OutputMode;,
        Lcom/facebook/ads/androidx/media3/exoplayer/audio/DefaultAudioSink$OffloadMode;,
        Lcom/facebook/ads/redexgen/X/9M;,
        Lcom/facebook/ads/androidx/media3/exoplayer/audio/DefaultAudioSink$AudioProcessorChain;,
        Lcom/facebook/ads/redexgen/X/8g;
    }
.end annotation


# static fields
.field public static A0v:Z

.field public static A0w:I

.field public static A0x:Ljava/util/concurrent/ExecutorService;

.field public static A0y:Ljava/util/concurrent/atomic/AtomicInteger;
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        type = {
            "NEW_CLASS_ARG"
        }
        value = "D23918943: Monitor the audio track usage"
    .end annotation
.end field

.field public static A0z:[B

.field public static A10:[Ljava/lang/String;

.field public static final A11:Ljava/lang/Object;


# instance fields
.field public A00:F

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:I

.field public A06:I

.field public A07:J

.field public A08:J

.field public A09:J

.field public A0A:J

.field public A0B:J

.field public A0C:J

.field public A0D:Landroid/media/AudioTrack;

.field public A0E:Lcom/facebook/ads/redexgen/X/oy;

.field public A0F:Lcom/facebook/ads/redexgen/X/1P;

.field public A0G:Lcom/facebook/ads/redexgen/X/ob;

.field public A0H:Lcom/facebook/ads/redexgen/X/7m;

.field public A0I:Lcom/facebook/ads/redexgen/X/8J;

.field public A0J:Lcom/facebook/ads/redexgen/X/8c;

.field public A0K:Lcom/facebook/ads/redexgen/X/8f;

.field public A0L:Lcom/facebook/ads/redexgen/X/8f;

.field public A0M:Lcom/facebook/ads/redexgen/X/8h;

.field public A0N:Lcom/facebook/ads/redexgen/X/8h;

.field public A0O:Lcom/facebook/ads/redexgen/X/8n;

.field public A0P:Ljava/nio/ByteBuffer;

.field public A0Q:Ljava/nio/ByteBuffer;

.field public A0R:Ljava/nio/ByteBuffer;

.field public A0S:Z
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        type = {
            "NEW_CLASS_ARG"
        }
        value = "D45157249: Retry Audio Track Init failure with less Audio track allocation sizes"
    .end annotation
.end field

.field public A0T:Z

.field public A0U:Z

.field public A0V:Z

.field public A0W:Z

.field public A0X:Z

.field public A0Y:Z

.field public A0Z:Z

.field public A0a:Z

.field public A0b:Z

.field public A0c:[B

.field public A0d:[Lcom/facebook/ads/redexgen/X/38;

.field public A0e:[Ljava/nio/ByteBuffer;

.field public final A0f:I

.field public final A0g:Lcom/facebook/ads/redexgen/X/39;

.field public final A0h:Lcom/facebook/ads/redexgen/X/3W;

.field public final A0i:Lcom/facebook/ads/redexgen/X/5u;

.field public final A0j:Lcom/facebook/ads/redexgen/X/7p;

.field public final A0k:Lcom/facebook/ads/redexgen/X/8T;

.field public final A0l:Lcom/facebook/ads/redexgen/X/9N;

.field public final A0m:Lcom/facebook/ads/redexgen/X/8d;

.field public final A0n:Lcom/facebook/ads/redexgen/X/8k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/8k<",
            "Lcom/facebook/ads/redexgen/X/8H;",
            ">;"
        }
    .end annotation
.end field

.field public final A0o:Lcom/facebook/ads/redexgen/X/8k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/8k<",
            "Lcom/facebook/ads/redexgen/X/8M;",
            ">;"
        }
    .end annotation
.end field

.field public final A0p:Lcom/facebook/ads/redexgen/X/9I;

.field public final A0q:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/facebook/ads/redexgen/X/8h;",
            ">;"
        }
    .end annotation
.end field

.field public final A0r:Z

.field public final A0s:Z

.field public final A0t:[Lcom/facebook/ads/redexgen/X/38;

.field public final A0u:[Lcom/facebook/ads/redexgen/X/38;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3170
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "a2KSouRkY2EeYPYlRPuQP1BMARpp6f9O"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Gy"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Dq9VRycV95bIzONst7U9W8VcH5OAT2ac"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "T381mgHUGlQbTRbVURm4ZuRF6EOi2D8f"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "KkGB0jhfpK5IC"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "ogTnlK5ViGnrQ4kTUDUA61bIZynBq2mv"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "CJ3ZuNqxaIjwSiQAD7ytgom2H57haWJk"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "spWmv2H5WGO5MG6CASCqBbohd0yqIF8X"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/mw;->A10:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/mw;->A0T()V

    const/4 v1, 0x0

    sput-boolean v1, Lcom/facebook/ads/redexgen/X/mw;->A0v:Z

    .line 3171
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/mw;->A11:Ljava/lang/Object;

    .line 3172
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/mw;->A0y:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/7p;[Lcom/facebook/ads/redexgen/X/38;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 99401
    new-instance v1, Lcom/facebook/ads/redexgen/X/8e;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/8e;-><init>()V

    sget-object v0, Lcom/facebook/ads/redexgen/X/7p;->A04:Lcom/facebook/ads/redexgen/X/7p;

    .line 99402
    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/j1;->A00(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/7p;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/8e;->A06(Lcom/facebook/ads/redexgen/X/7p;)Lcom/facebook/ads/redexgen/X/8e;

    move-result-object v0

    .line 99403
    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/8e;->A07([Lcom/facebook/ads/redexgen/X/38;)Lcom/facebook/ads/redexgen/X/8e;

    move-result-object v0

    .line 99404
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/mw;-><init>(Lcom/facebook/ads/redexgen/X/8e;)V

    .line 99405
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/8e;)V
    .locals 11
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "#1.audioProcessorChain"
        }
    .end annotation

    .line 99406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99407
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/8e;->A02(Lcom/facebook/ads/redexgen/X/8e;)Lcom/facebook/ads/redexgen/X/7p;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0j:Lcom/facebook/ads/redexgen/X/7p;

    .line 99408
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/8e;->A01(Lcom/facebook/ads/redexgen/X/8e;)Lcom/facebook/ads/redexgen/X/39;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0g:Lcom/facebook/ads/redexgen/X/39;

    .line 99409
    sget v1, Lcom/facebook/ads/redexgen/X/4a;->A02:I

    const/16 v0, 0x15

    const/4 v5, 0x1

    const/4 v2, 0x0

    if-lt v1, v0, :cond_2

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/8e;->A03(Lcom/facebook/ads/redexgen/X/8e;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0s:Z

    .line 99410
    sget v1, Lcom/facebook/ads/redexgen/X/4a;->A02:I

    const/16 v0, 0x17

    if-lt v1, v0, :cond_1

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/8e;->A04(Lcom/facebook/ads/redexgen/X/8e;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0r:Z

    .line 99411
    sget v1, Lcom/facebook/ads/redexgen/X/4a;->A02:I

    const/16 v0, 0x1d

    if-lt v1, v0, :cond_0

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/8e;->A00(Lcom/facebook/ads/redexgen/X/8e;)I

    move-result v0

    :goto_2
    iput v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0f:I

    .line 99412
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/8e;->A00:Lcom/facebook/ads/redexgen/X/8d;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0m:Lcom/facebook/ads/redexgen/X/8d;

    .line 99413
    sget-object v1, Lcom/facebook/ads/redexgen/X/3T;->A00:Lcom/facebook/ads/redexgen/X/3T;

    new-instance v0, Lcom/facebook/ads/redexgen/X/3W;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/3W;-><init>(Lcom/facebook/ads/redexgen/X/3T;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0h:Lcom/facebook/ads/redexgen/X/3W;

    .line 99414
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0h:Lcom/facebook/ads/redexgen/X/3W;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/3W;->A04()Z

    .line 99415
    const/4 v0, 0x0

    new-instance v1, Lcom/facebook/ads/redexgen/X/mx;

    invoke-direct {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/mx;-><init>(Lcom/facebook/ads/redexgen/X/mw;Lcom/facebook/ads/redexgen/X/8Z;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/8T;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/8T;-><init>(Lcom/facebook/ads/redexgen/X/8R;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0k:Lcom/facebook/ads/redexgen/X/8T;

    .line 99416
    new-instance v0, Lcom/facebook/ads/redexgen/X/9N;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/9N;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0l:Lcom/facebook/ads/redexgen/X/9N;

    .line 99417
    new-instance v0, Lcom/facebook/ads/redexgen/X/9I;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/9I;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0p:Lcom/facebook/ads/redexgen/X/9I;

    .line 99418
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 99419
    .local v0, "toIntPcmAudioProcessors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/androidx/media3/common/audio/AudioProcessor;>;"
    const/4 v0, 0x3

    new-array v3, v0, [Lcom/facebook/ads/redexgen/X/my;

    new-instance v0, Lcom/facebook/ads/redexgen/X/9K;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/9K;-><init>()V

    aput-object v0, v3, v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0l:Lcom/facebook/ads/redexgen/X/9N;

    aput-object v0, v3, v5

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0p:Lcom/facebook/ads/redexgen/X/9I;

    aput-object v0, v3, v1

    invoke-static {v4, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 99420
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0g:Lcom/facebook/ads/redexgen/X/39;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/39;->A6r()[Lcom/facebook/ads/redexgen/X/38;

    move-result-object v0

    invoke-static {v4, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 99421
    new-array v0, v2, [Lcom/facebook/ads/redexgen/X/38;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/redexgen/X/38;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0u:[Lcom/facebook/ads/redexgen/X/38;

    .line 99422
    new-array v1, v5, [Lcom/facebook/ads/redexgen/X/38;

    new-instance v0, Lcom/facebook/ads/redexgen/X/9L;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/9L;-><init>()V

    aput-object v0, v1, v2

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/mw;->A0t:[Lcom/facebook/ads/redexgen/X/38;

    .line 99423
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A00:F

    .line 99424
    sget-object v0, Lcom/facebook/ads/redexgen/X/oy;->A07:Lcom/facebook/ads/redexgen/X/oy;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0E:Lcom/facebook/ads/redexgen/X/oy;

    .line 99425
    iput v2, p0, Lcom/facebook/ads/redexgen/X/mw;->A01:I

    .line 99426
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/1P;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/1P;-><init>(IF)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0F:Lcom/facebook/ads/redexgen/X/1P;

    .line 99427
    new-instance v3, Lcom/facebook/ads/redexgen/X/8h;

    sget-object v4, Lcom/facebook/ads/redexgen/X/ob;->A06:Lcom/facebook/ads/redexgen/X/ob;

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    invoke-direct/range {v3 .. v10}, Lcom/facebook/ads/redexgen/X/8h;-><init>(Lcom/facebook/ads/redexgen/X/ob;ZJJLcom/facebook/ads/redexgen/X/8Z;)V

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/mw;->A0N:Lcom/facebook/ads/redexgen/X/8h;

    .line 99428
    sget-object v0, Lcom/facebook/ads/redexgen/X/ob;->A06:Lcom/facebook/ads/redexgen/X/ob;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0G:Lcom/facebook/ads/redexgen/X/ob;

    .line 99429
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A03:I

    .line 99430
    new-array v0, v2, [Lcom/facebook/ads/redexgen/X/38;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0d:[Lcom/facebook/ads/redexgen/X/38;

    .line 99431
    new-array v0, v2, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0e:[Ljava/nio/ByteBuffer;

    .line 99432
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0q:Ljava/util/ArrayDeque;

    .line 99433
    const-wide/16 v1, 0x64

    new-instance v0, Lcom/facebook/ads/redexgen/X/8k;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/8k;-><init>(J)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0n:Lcom/facebook/ads/redexgen/X/8k;

    .line 99434
    new-instance v0, Lcom/facebook/ads/redexgen/X/8k;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/8k;-><init>(J)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0o:Lcom/facebook/ads/redexgen/X/8k;

    .line 99435
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0i:Lcom/facebook/ads/redexgen/X/5u;

    .line 99436
    return-void

    .line 99437
    :cond_0
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 99438
    :cond_1
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 99439
    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private A00()I
    .locals 3
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        type = {
            "MERGED"
        }
        value = "D58560720: customized audio track retry logic. Feature is available upstream already"
    .end annotation

    .line 99440
    sget-object v0, Lcom/facebook/ads/redexgen/X/i2;->A1i:Lcom/facebook/ads/redexgen/X/i2;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/i5;->A03(Lcom/facebook/ads/redexgen/X/i2;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99441
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0K:Lcom/facebook/ads/redexgen/X/8f;

    iget v2, v0, Lcom/facebook/ads/redexgen/X/8f;->A06:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0K:Lcom/facebook/ads/redexgen/X/8f;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/8f;->A02:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0K:Lcom/facebook/ads/redexgen/X/8f;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/8f;->A03:I

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/mw;->A01(III)I

    move-result v0

    return v0

    .line 99442
    :cond_0
    const v0, 0xf4240

    return v0
.end method

.method public static A01(III)I
    .locals 0

    .line 99443
    invoke-static {p0, p1, p2}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result p1

    .line 99444
    .local p0, "minBufferSize":I
    const/4 p0, -0x2

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    :goto_0
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/3M;->A08(Z)V

    .line 99445
    return p1

    .line 99446
    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static A02(ILjava/nio/ByteBuffer;)I
    .locals 4

    .line 99447
    const/16 v0, 0x400

    const/4 v1, -0x1

    packed-switch p0, :pswitch_data_0

    .line 99448
    :pswitch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xf4

    const/16 v1, 0x1b

    const/16 v0, 0x11

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/mw;->A0L(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99449
    :pswitch_1
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Gr;->A00(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0

    .line 99450
    :pswitch_2
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/GI;->A01(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0

    .line 99451
    :pswitch_3
    return v0

    .line 99452
    :pswitch_4
    const/16 v0, 0x200

    return v0

    .line 99453
    :pswitch_5
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/GF;->A02(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 99454
    .local v0, "syncframeOffset":I
    if-ne v0, v1, :cond_0

    .line 99455
    const/4 v0, 0x0

    .line 99456
    :goto_0
    return v0

    .line 99457
    :cond_0
    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/GF;->A04(Ljava/nio/ByteBuffer;I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x10

    goto :goto_0

    .line 99458
    .end local v0    # "syncframeOffset":I
    :pswitch_6
    const/16 v0, 0x800

    return v0

    .line 99459
    :pswitch_7
    return v0

    .line 99460
    :pswitch_8
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/4a;->A0F(Ljava/nio/ByteBuffer;I)I

    move-result v0

    .line 99461
    .local v0, "headerDataInBigEndian":I
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Gm;->A01(I)I

    move-result v0

    .line 99462
    .local v2, "frameCount":I
    if-eq v0, v1, :cond_1

    .line 99463
    return v0

    .line 99464
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 99465
    .end local v0    # "headerDataInBigEndian":I
    .end local v2    # "frameCount":I
    :pswitch_9
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/GV;->A00(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0

    .line 99466
    :pswitch_a
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/GF;->A03(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_a
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private A03(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)I
    .locals 7

    .line 99467
    sget v1, Lcom/facebook/ads/redexgen/X/4a;->A02:I

    const/16 v0, 0x1f

    if-lt v1, v0, :cond_0

    .line 99468
    invoke-static {p1, p2}, Landroid/media/AudioManager;->getPlaybackOffloadSupport(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)I

    move-result v0

    return v0

    .line 99469
    :cond_0
    invoke-static {p1, p2}, Landroid/media/AudioManager;->isOffloadedPlaybackSupported(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 99470
    const/4 v0, 0x0

    return v0

    .line 99471
    :cond_1
    sget v1, Lcom/facebook/ads/redexgen/X/4a;->A02:I

    const/16 v0, 0x1e

    if-ne v1, v0, :cond_4

    sget-object v6, Lcom/facebook/ads/redexgen/X/4a;->A06:Ljava/lang/String;

    const/16 v5, 0xad

    const/4 v4, 0x5

    const/16 v3, 0x49

    sget-object v2, Lcom/facebook/ads/redexgen/X/mw;->A10:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/mw;->A10:[Ljava/lang/String;

    const-string v1, "3tkRuQxdBcZlCTwsgu7cjpWlPYr81dQa"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-static {v5, v4, v3}, Lcom/facebook/ads/redexgen/X/mw;->A0L(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 99472
    const/4 v3, 0x2

    sget-object v1, Lcom/facebook/ads/redexgen/X/mw;->A10:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x20

    if-eq v1, v0, :cond_3

    return v3

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/mw;->A10:[Ljava/lang/String;

    const-string v1, "7yaDe65lYY86qlvGhmsANLPH6jvNYU2p"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    return v3

    .line 99473
    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method public static A04(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I
    .locals 1

    .line 99474
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v0

    return v0
.end method

.method private A05(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;IJ)I
    .locals 11

    .line 99475
    move-wide v9, p4

    sget v3, Lcom/facebook/ads/redexgen/X/4a;->A02:I

    const/16 v2, 0x1a

    const-wide/16 v0, 0x3e8

    move v7, p3

    move-object v6, p2

    move-object v5, p1

    if-lt v3, v2, :cond_0

    .line 99476
    const/4 v8, 0x1

    mul-long/2addr v9, v0

    invoke-virtual/range {v5 .. v10}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;IIJ)I

    move-result v0

    return v0

    .line 99477
    :cond_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/mw;->A0P:Ljava/nio/ByteBuffer;

    if-nez v2, :cond_1

    .line 99478
    const/16 v2, 0x10

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/mw;->A0P:Ljava/nio/ByteBuffer;

    .line 99479
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/mw;->A0P:Ljava/nio/ByteBuffer;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 99480
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/mw;->A0P:Ljava/nio/ByteBuffer;

    const v2, 0x55550001

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 99481
    :cond_1
    iget v2, p0, Lcom/facebook/ads/redexgen/X/mw;->A02:I

    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 99482
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/mw;->A0P:Ljava/nio/ByteBuffer;

    const/4 v2, 0x4

    invoke-virtual {v4, v2, v7}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 99483
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/mw;->A0P:Ljava/nio/ByteBuffer;

    const/16 v2, 0x8

    mul-long/2addr v0, v9

    invoke-virtual {v4, v2, v0, v1}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 99484
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0P:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 99485
    iput v7, p0, Lcom/facebook/ads/redexgen/X/mw;->A02:I

    .line 99486
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0P:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 99487
    .local v0, "avSyncHeaderBytesRemaining":I
    if-lez v2, :cond_4

    .line 99488
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/mw;->A0P:Ljava/nio/ByteBuffer;

    .line 99489
    const/4 v0, 0x1

    invoke-virtual {v5, v1, v2, v0}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v0

    .line 99490
    .local v2, "result":I
    if-gez v0, :cond_3

    .line 99491
    iput v3, p0, Lcom/facebook/ads/redexgen/X/mw;->A02:I

    .line 99492
    return v0

    .line 99493
    :cond_3
    if-ge v0, v2, :cond_4

    .line 99494
    return v3

    .line 99495
    .end local v2    # "result":I
    :cond_4
    invoke-static {v5, v6, v7}, Lcom/facebook/ads/redexgen/X/mw;->A04(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I

    move-result v4

    .line 99496
    .restart local v2    # "result":I
    if-gez v4, :cond_5

    .line 99497
    iput v3, p0, Lcom/facebook/ads/redexgen/X/mw;->A02:I

    .line 99498
    return v4

    .line 99499
    :cond_5
    iget v3, p0, Lcom/facebook/ads/redexgen/X/mw;->A02:I

    sub-int/2addr v3, v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/mw;->A10:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/mw;->A10:[Ljava/lang/String;

    const-string v1, "dZEIQVBMkpJ01dOsE3P3AYpi9pP3UgAn"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    iput v3, p0, Lcom/facebook/ads/redexgen/X/mw;->A02:I

    .line 99500
    return v4

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A06()J
    .locals 5

    .line 99501
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0K:Lcom/facebook/ads/redexgen/X/8f;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/8f;->A04:I

    if-nez v0, :cond_0

    .line 99502
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/mw;->A0A:J

    sget-object v1, Lcom/facebook/ads/redexgen/X/mw;->A10:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 99503
    :cond_0
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/mw;->A09:J

    goto :goto_0

    .line 99504
    :cond_1
    sget-object v4, Lcom/facebook/ads/redexgen/X/mw;->A10:[Ljava/lang/String;

    const-string v1, "fKroUyDCoriQZ27MdWvBeynNHxXh31S0"

    const/4 v0, 0x2

    aput-object v1, v4, v0

    const-string v1, "V2Tsqcz9Ivj1DWTn2T33JaE9HhmQCs1A"

    const/4 v0, 0x6

    aput-object v1, v4, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0K:Lcom/facebook/ads/redexgen/X/8f;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/8f;->A01:I

    int-to-long v0, v0

    div-long/2addr v2, v0

    .line 99505
    :goto_0
    return-wide v2
.end method

.method private A07()J
    .locals 4

    .line 99506
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0K:Lcom/facebook/ads/redexgen/X/8f;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/8f;->A04:I

    if-nez v0, :cond_0

    .line 99507
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/mw;->A0C:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0K:Lcom/facebook/ads/redexgen/X/8f;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/8f;->A05:I

    int-to-long v0, v0

    div-long/2addr v2, v0

    .line 99508
    :goto_0
    return-wide v2

    .line 99509
    :cond_0
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/mw;->A0B:J

    goto :goto_0
.end method

.method private A08(J)J
    .locals 5

    .line 99510
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0q:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0q:Ljava/util/ArrayDeque;

    .line 99511
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/8h;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/8h;->A00:J

    cmp-long v0, p1, v1

    if-ltz v0, :cond_1

    .line 99512
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0q:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/8h;

    sget-object v2, Lcom/facebook/ads/redexgen/X/mw;->A10:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/mw;->A10:[Ljava/lang/String;

    const-string v1, "uS5QwbhdMNBXkjn1i9eeeV7Jy2FKd79B"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/mw;->A0N:Lcom/facebook/ads/redexgen/X/8h;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 99513
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0N:Lcom/facebook/ads/redexgen/X/8h;

    iget-wide v3, v0, Lcom/facebook/ads/redexgen/X/8h;->A00:J

    sub-long v1, p1, v3

    .line 99514
    .local v0, "playoutDurationSinceLastCheckpointUs":J
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0N:Lcom/facebook/ads/redexgen/X/8h;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/8h;->A02:Lcom/facebook/ads/redexgen/X/ob;

    sget-object v0, Lcom/facebook/ads/redexgen/X/ob;->A06:Lcom/facebook/ads/redexgen/X/ob;

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/ob;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 99515
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0N:Lcom/facebook/ads/redexgen/X/8h;

    iget-wide v3, v0, Lcom/facebook/ads/redexgen/X/8h;->A01:J

    add-long/2addr v3, v1

    return-wide v3

    .line 99516
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0q:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 99517
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0g:Lcom/facebook/ads/redexgen/X/39;

    .line 99518
    invoke-interface {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/39;->A8M(J)J

    move-result-wide v2

    .line 99519
    .local v2, "mediaDurationSinceLastCheckpointUs":J
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0N:Lcom/facebook/ads/redexgen/X/8h;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/8h;->A01:J

    add-long/2addr v0, v2

    return-wide v0

    .line 99520
    .end local v2    # "mediaDurationSinceLastCheckpointUs":J
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0q:Ljava/util/ArrayDeque;

    .line 99521
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/8h;

    .line 99522
    .local v2, "nextMediaPositionParameters":Lcom/facebook/ads/redexgen/X/8h;
    iget-wide v1, v4, Lcom/facebook/ads/redexgen/X/8h;->A00:J

    sub-long/2addr v1, p1

    .line 99523
    .local v3, "playoutDurationUntilNextCheckpointUs":J
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0N:Lcom/facebook/ads/redexgen/X/8h;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/8h;->A02:Lcom/facebook/ads/redexgen/X/ob;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/ob;->A01:F

    .line 99524
    invoke-static {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/4a;->A0Q(JF)J

    move-result-wide v2

    .line 99525
    .local p0, "mediaDurationUntilNextCheckpointUs":J
    iget-wide v0, v4, Lcom/facebook/ads/redexgen/X/8h;->A01:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private A09(J)J
    .locals 3

    .line 99526
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/mw;->A0K:Lcom/facebook/ads/redexgen/X/8f;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0g:Lcom/facebook/ads/redexgen/X/39;

    .line 99527
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/39;->A90()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/8f;->A08(J)J

    move-result-wide v0

    add-long/2addr v0, p1

    .line 99528
    return-wide v0
.end method

.method public static synthetic A0A(Lcom/facebook/ads/redexgen/X/mw;)J
    .locals 1

    .line 99529
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/mw;->A06()J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic A0B(Lcom/facebook/ads/redexgen/X/mw;)J
    .locals 1

    .line 99530
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/mw;->A07()J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic A0C(Lcom/facebook/ads/redexgen/X/mw;)J
    .locals 1

    .line 99531
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A07:J

    return-wide v0
.end method

.method public static A0D(III)Landroid/media/AudioFormat;
    .locals 1

    .line 99532
    new-instance v0, Landroid/media/AudioFormat$Builder;

    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 99533
    invoke-virtual {v0, p0}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 99534
    invoke-virtual {v0, p1}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 99535
    invoke-virtual {v0, p2}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 99536
    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v0

    .line 99537
    return-object v0
.end method

.method public static synthetic A0E(III)Landroid/media/AudioFormat;
    .locals 0

    .line 99538
    invoke-static {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/mw;->A0D(III)Landroid/media/AudioFormat;

    move-result-object p0

    return-object p0
.end method

.method private A0F()Landroid/media/AudioTrack;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/8H;
        }
    .end annotation

    .line 99539
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0K:Lcom/facebook/ads/redexgen/X/8f;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/mw;->A0G(Lcom/facebook/ads/redexgen/X/8f;)Landroid/media/AudioTrack;

    move-result-object v0

    return-object v0
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/8H; {:try_start_0 .. :try_end_0} :catch_0

    .line 99540
    :catch_0
    move-exception v2

    .line 99541
    .local v0, "initialFailure":Lcom/facebook/ads/redexgen/X/8H;
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/mw;->A00()I

    move-result v1

    .line 99542
    .local v1, "retryBufferSize":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0K:Lcom/facebook/ads/redexgen/X/8f;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/8f;->A00:I

    if-le v0, v1, :cond_0

    .line 99543
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0K:Lcom/facebook/ads/redexgen/X/8f;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/8f;->A0C(I)Lcom/facebook/ads/redexgen/X/8f;

    move-result-object v1

    .line 99544
    .local v2, "retryConfiguration":Lcom/facebook/ads/redexgen/X/8f;
    :try_start_1
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/mw;->A0G(Lcom/facebook/ads/redexgen/X/8f;)Landroid/media/AudioTrack;

    move-result-object v0

    .line 99545
    .local p0, "audioTrack":Landroid/media/AudioTrack;
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/mw;->A0K:Lcom/facebook/ads/redexgen/X/8f;

    .line 99546
    return-object v0
    :try_end_1
    .catch Lcom/facebook/ads/redexgen/X/8H; {:try_start_1 .. :try_end_1} :catch_1

    .line 99547
    .end local p0    # "audioTrack":Landroid/media/AudioTrack;
    :catch_1
    move-exception v0

    .line 99548
    .local p0, "retryFailure":Lcom/facebook/ads/redexgen/X/8H;
    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/8H;->addSuppressed(Ljava/lang/Throwable;)V

    .line 99549
    .end local v2    # "retryConfiguration":Lcom/facebook/ads/redexgen/X/8f;
    .end local p0    # "retryFailure":Lcom/facebook/ads/redexgen/X/8H;
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/mw;->A0O()V

    .line 99550
    throw v2
.end method

.method private A0G(Lcom/facebook/ads/redexgen/X/8f;)Landroid/media/AudioTrack;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/8H;
        }
    .end annotation

    .line 99551
    :try_start_0
    iget-boolean v2, p0, Lcom/facebook/ads/redexgen/X/mw;->A0b:Z

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/mw;->A0E:Lcom/facebook/ads/redexgen/X/oy;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A01:I

    .line 99552
    invoke-virtual {p1, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8f;->A0A(ZLcom/facebook/ads/redexgen/X/oy;I)Landroid/media/AudioTrack;

    move-result-object v1

    .line 99553
    .local v0, "audioTrack":Landroid/media/AudioTrack;
    const/4 v0, 0x0

    if-eqz v0, :cond_0

    .line 99554
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/mw;->A0l(Landroid/media/AudioTrack;)Z

    .line 99555
    :cond_0
    return-object v1
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/8H; {:try_start_0 .. :try_end_0} :catch_0

    .line 99556
    .end local v0    # "audioTrack":Landroid/media/AudioTrack;
    :catch_0
    move-exception v1

    .line 99557
    .local v0, "e":Lcom/facebook/ads/redexgen/X/8H;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0I:Lcom/facebook/ads/redexgen/X/8J;

    if-eqz v0, :cond_1

    .line 99558
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0I:Lcom/facebook/ads/redexgen/X/8J;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/8J;->ACV(Ljava/lang/Exception;)V

    .line 99559
    :cond_1
    throw v1
.end method

.method public static synthetic A0H(Lcom/facebook/ads/redexgen/X/mw;)Landroid/media/AudioTrack;
    .locals 0

    .line 99560
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0D:Landroid/media/AudioTrack;

    return-object p0
.end method

.method private A0I()Lcom/facebook/ads/redexgen/X/ob;
    .locals 1

    .line 99561
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/mw;->A0K()Lcom/facebook/ads/redexgen/X/8h;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/8h;->A02:Lcom/facebook/ads/redexgen/X/ob;

    return-object v0
.end method

.method public static synthetic A0J(Lcom/facebook/ads/redexgen/X/mw;)Lcom/facebook/ads/redexgen/X/8J;
    .locals 0

    .line 99562
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0I:Lcom/facebook/ads/redexgen/X/8J;

    return-object p0
.end method

.method private A0K()Lcom/facebook/ads/redexgen/X/8h;
    .locals 1

    .line 99563
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0M:Lcom/facebook/ads/redexgen/X/8h;

    if-eqz v0, :cond_0

    .line 99564
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0M:Lcom/facebook/ads/redexgen/X/8h;

    .line 99565
    :goto_0
    return-object v0

    .line 99566
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0q:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 99567
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0q:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/8h;

    goto :goto_0

    .line 99568
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0N:Lcom/facebook/ads/redexgen/X/8h;

    goto :goto_0
.end method

.method public static A0L(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/mw;->A0z:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x38

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A0M()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 4

    .line 99569
    sget-object v3, Lcom/facebook/ads/redexgen/X/mw;->A0y:Ljava/util/concurrent/atomic/AtomicInteger;

    sget-object v1, Lcom/facebook/ads/redexgen/X/mw;->A10:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x6

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/mw;->A10:[Ljava/lang/String;

    const-string v1, "bxvwh9PGR3JBxYGaTMYcQ8NcsphLXH3B"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    return-object v3

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0N()V
    .locals 3

    .line 99570
    const/4 v2, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0d:[Lcom/facebook/ads/redexgen/X/38;

    array-length v0, v0

    if-ge v2, v0, :cond_0

    .line 99571
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0d:[Lcom/facebook/ads/redexgen/X/38;

    aget-object v0, v0, v2

    .line 99572
    .local v1, "audioProcessor":Lcom/facebook/ads/redexgen/X/38;
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/38;->flush()V

    .line 99573
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/mw;->A0e:[Ljava/nio/ByteBuffer;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/38;->A8V()Ljava/nio/ByteBuffer;

    move-result-object v0

    aput-object v0, v1, v2

    .line 99574
    .end local v1    # "audioProcessor":Lcom/facebook/ads/redexgen/X/38;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 99575
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private A0O()V
    .locals 4

    .line 99576
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0K:Lcom/facebook/ads/redexgen/X/8f;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8f;->A0D()Z

    move-result v0

    if-nez v0, :cond_0

    .line 99577
    return-void

    .line 99578
    :cond_0
    const/4 v3, 0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/mw;->A10:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/mw;->A10:[Ljava/lang/String;

    const-string v1, "ac1bNzRzCepoXog5xkGE2UP5sVZPG6ZN"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/mw;->A0W:Z

    .line 99579
    return-void
.end method

.method private A0P()V
    .locals 3

    .line 99580
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0a:Z

    if-nez v0, :cond_0

    .line 99581
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0a:Z

    .line 99582
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/mw;->A0k:Lcom/facebook/ads/redexgen/X/8T;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/mw;->A07()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/8T;->A0H(J)V

    .line 99583
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0D:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 99584
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A02:I

    .line 99585
    :cond_0
    return-void
.end method

.method private A0Q()V
    .locals 11

    .line 99586
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0A:J

    .line 99587
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A09:J

    .line 99588
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0C:J

    .line 99589
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0B:J

    .line 99590
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/mw;->A0V:Z

    .line 99591
    iput v2, p0, Lcom/facebook/ads/redexgen/X/mw;->A04:I

    .line 99592
    new-instance v3, Lcom/facebook/ads/redexgen/X/8h;

    .line 99593
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/mw;->A0I()Lcom/facebook/ads/redexgen/X/ob;

    move-result-object v4

    .line 99594
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/mw;->A0p()Z

    move-result v5

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const-wide/16 v6, 0x0

    invoke-direct/range {v3 .. v10}, Lcom/facebook/ads/redexgen/X/8h;-><init>(Lcom/facebook/ads/redexgen/X/ob;ZJJLcom/facebook/ads/redexgen/X/8Z;)V

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/mw;->A0N:Lcom/facebook/ads/redexgen/X/8h;

    .line 99595
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A08:J

    .line 99596
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/mw;->A0M:Lcom/facebook/ads/redexgen/X/8h;

    .line 99597
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0q:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 99598
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/mw;->A0Q:Ljava/nio/ByteBuffer;

    .line 99599
    iput v2, p0, Lcom/facebook/ads/redexgen/X/mw;->A05:I

    .line 99600
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/mw;->A0R:Ljava/nio/ByteBuffer;

    .line 99601
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/mw;->A0a:Z

    .line 99602
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/mw;->A0U:Z

    .line 99603
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A03:I

    .line 99604
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/mw;->A0P:Ljava/nio/ByteBuffer;

    .line 99605
    iput v2, p0, Lcom/facebook/ads/redexgen/X/mw;->A02:I

    .line 99606
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0p:Lcom/facebook/ads/redexgen/X/9I;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9I;->A0D()V

    .line 99607
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/mw;->A0N()V

    .line 99608
    return-void
.end method

.method private A0R()V
    .locals 2

    .line 99609
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/mw;->A0h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 99610
    :goto_0
    return-void

    .line 99611
    :cond_0
    sget v1, Lcom/facebook/ads/redexgen/X/4a;->A02:I

    const/16 v0, 0x15

    if-lt v1, v0, :cond_1

    .line 99612
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/mw;->A0D:Landroid/media/AudioTrack;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A00:F

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/mw;->A0X(Landroid/media/AudioTrack;F)V

    goto :goto_0

    .line 99613
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/mw;->A0D:Landroid/media/AudioTrack;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A00:F

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/mw;->A0Y(Landroid/media/AudioTrack;F)V

    goto :goto_0
.end method

.method private A0S()V
    .locals 6

    .line 99614
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0K:Lcom/facebook/ads/redexgen/X/8f;

    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/8f;->A09:[Lcom/facebook/ads/redexgen/X/38;

    .line 99615
    .local v0, "audioProcessors":[Lcom/facebook/ads/redexgen/X/38;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 99616
    .local v1, "newAudioProcessors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/androidx/media3/common/audio/AudioProcessor;>;"
    array-length v3, v5

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v5, v2

    .line 99617
    .local v4, "audioProcessor":Lcom/facebook/ads/redexgen/X/38;
    invoke-interface {v1}, Lcom/facebook/ads/redexgen/X/38;->AAC()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99618
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99619
    .end local v4    # "audioProcessor":Lcom/facebook/ads/redexgen/X/38;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 99620
    :cond_0
    invoke-interface {v1}, Lcom/facebook/ads/redexgen/X/38;->flush()V

    goto :goto_1

    .line 99621
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 99622
    .local v2, "count":I
    new-array v0, v1, [Lcom/facebook/ads/redexgen/X/38;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/redexgen/X/38;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0d:[Lcom/facebook/ads/redexgen/X/38;

    .line 99623
    new-array v0, v1, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0e:[Ljava/nio/ByteBuffer;

    .line 99624
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/mw;->A0N()V

    .line 99625
    return-void
.end method

.method public static A0T()V
    .locals 1

    const/16 v0, 0x118

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/mw;->A0z:[B

    return-void

    :array_0
    .array-data 1
        0x63t
        0x6at
        0x2ct
        0x25t
        0x38t
        0x70t
        0x6at
        0x6bt
        0x4at
        0x49t
        0x4et
        0x5at
        0x43t
        0x5bt
        0x6et
        0x5at
        0x4bt
        0x46t
        0x40t
        0x7ct
        0x46t
        0x41t
        0x44t
        0x68t
        0x55t
        0x42t
        0x7dt
        0x41t
        0x4ct
        0x54t
        0x48t
        0x5ft
        0x17t
        0x6ct
        0x58t
        0x49t
        0x44t
        0x42t
        0x79t
        0x5ft
        0x4ct
        0x4et
        0x46t
        0x7ft
        0x48t
        0x41t
        0x48t
        0x4ct
        0x5et
        0x48t
        0x79t
        0x45t
        0x5ft
        0x48t
        0x4ct
        0x49t
        0x27t
        0x0t
        0x8t
        0xdt
        0x4t
        0x5t
        0x41t
        0x15t
        0xet
        0x41t
        0x12t
        0x4t
        0x15t
        0x41t
        0x11t
        0xdt
        0x0t
        0x18t
        0x3t
        0x0t
        0x2t
        0xat
        0x41t
        0x11t
        0x0t
        0x13t
        0x0t
        0xct
        0x12t
        0x79t
        0x5et
        0x46t
        0x51t
        0x5ct
        0x59t
        0x54t
        0x10t
        0x60t
        0x73t
        0x7dt
        0x10t
        0x55t
        0x5et
        0x53t
        0x5ft
        0x54t
        0x59t
        0x5et
        0x57t
        0xat
        0x10t
        0x49t
        0x6et
        0x76t
        0x61t
        0x6ct
        0x69t
        0x64t
        0x20t
        0x6ft
        0x75t
        0x74t
        0x70t
        0x75t
        0x74t
        0x20t
        0x63t
        0x68t
        0x61t
        0x6et
        0x6et
        0x65t
        0x6ct
        0x20t
        0x63t
        0x6ft
        0x6et
        0x66t
        0x69t
        0x67t
        0x20t
        0x28t
        0x6dt
        0x6ft
        0x64t
        0x65t
        0x3dt
        0x39t
        0x1et
        0x6t
        0x11t
        0x1ct
        0x19t
        0x14t
        0x50t
        0x1ft
        0x5t
        0x4t
        0x0t
        0x5t
        0x4t
        0x50t
        0x15t
        0x1et
        0x13t
        0x1ft
        0x14t
        0x19t
        0x1et
        0x17t
        0x50t
        0x58t
        0x1dt
        0x1ft
        0x14t
        0x15t
        0x4dt
        0x21t
        0x18t
        0x9t
        0x14t
        0x1dt
        0x68t
        0x5ft
        0x49t
        0x5ft
        0x4et
        0x4et
        0x53t
        0x54t
        0x5dt
        0x1at
        0x49t
        0x4et
        0x5bt
        0x56t
        0x56t
        0x5ft
        0x5et
        0x1at
        0x5bt
        0x4ft
        0x5et
        0x53t
        0x55t
        0x1at
        0x4et
        0x48t
        0x5bt
        0x59t
        0x51t
        0x75t
        0x4et
        0x41t
        0x42t
        0x4ct
        0x45t
        0x0t
        0x54t
        0x4ft
        0x0t
        0x43t
        0x4ft
        0x4et
        0x46t
        0x49t
        0x47t
        0x55t
        0x52t
        0x45t
        0x0t
        0x50t
        0x41t
        0x53t
        0x53t
        0x54t
        0x48t
        0x52t
        0x4ft
        0x55t
        0x47t
        0x48t
        0x0t
        0x46t
        0x4ft
        0x52t
        0x1at
        0x0t
        0x7ct
        0x47t
        0x4ct
        0x51t
        0x59t
        0x4ct
        0x4at
        0x5dt
        0x4ct
        0x4dt
        0x9t
        0x48t
        0x5ct
        0x4dt
        0x40t
        0x46t
        0x9t
        0x4ct
        0x47t
        0x4at
        0x46t
        0x4dt
        0x40t
        0x47t
        0x4et
        0x13t
        0x9t
        0x1ft
        0xbt
        0x1at
        0x17t
        0x11t
        0x51t
        0xct
        0x1ft
        0x9t
    .end array-data
.end method

.method private A0U(J)V
    .locals 12

    .line 99626
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/mw;->A0i()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 99627
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/mw;->A0g:Lcom/facebook/ads/redexgen/X/39;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/mw;->A0I()Lcom/facebook/ads/redexgen/X/ob;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/39;->A47(Lcom/facebook/ads/redexgen/X/ob;)Lcom/facebook/ads/redexgen/X/ob;

    move-result-object v5

    .line 99628
    .local v2, "playbackParameters":Lcom/facebook/ads/redexgen/X/ob;
    :goto_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/mw;->A0i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99629
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/mw;->A0g:Lcom/facebook/ads/redexgen/X/39;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/mw;->A0p()Z

    move-result v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/39;->A48(Z)Z

    move-result v6

    .line 99630
    .local v0, "skipSilenceEnabled":Z
    :goto_1
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/mw;->A0q:Ljava/util/ArrayDeque;

    new-instance v4, Lcom/facebook/ads/redexgen/X/8h;

    .line 99631
    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/mw;->A0K:Lcom/facebook/ads/redexgen/X/8f;

    .line 99632
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/mw;->A07()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Lcom/facebook/ads/redexgen/X/8f;->A08(J)J

    move-result-wide v9

    const/4 v11, 0x0

    invoke-direct/range {v4 .. v11}, Lcom/facebook/ads/redexgen/X/8h;-><init>(Lcom/facebook/ads/redexgen/X/ob;ZJJLcom/facebook/ads/redexgen/X/8Z;)V

    .line 99633
    invoke-virtual {v2, v4}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 99634
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/mw;->A0S()V

    .line 99635
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0I:Lcom/facebook/ads/redexgen/X/8J;

    if-eqz v0, :cond_0

    .line 99636
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0I:Lcom/facebook/ads/redexgen/X/8J;

    invoke-interface {v0, v6}, Lcom/facebook/ads/redexgen/X/8J;->AFF(Z)V

    .line 99637
    :cond_0
    return-void

    .line 99638
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 99639
    :cond_2
    sget-object v5, Lcom/facebook/ads/redexgen/X/ob;->A06:Lcom/facebook/ads/redexgen/X/ob;

    sget-object v1, Lcom/facebook/ads/redexgen/X/mw;->A10:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x20

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/mw;->A10:[Ljava/lang/String;

    const-string v1, "I2oaxDVd9h4oXXSjJqrHfFArwnmkYbuU"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "djNSsSrQ9W3py9jFqud3MNGsNXIKPv6H"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    goto :goto_0
.end method

.method private A0V(J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/8M;
        }
    .end annotation

    .line 99640
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0d:[Lcom/facebook/ads/redexgen/X/38;

    array-length v4, v0

    .line 99641
    .local v0, "count":I
    move v3, v4

    .line 99642
    .local v1, "index":I
    :goto_0
    if-ltz v3, :cond_7

    .line 99643
    if-lez v3, :cond_4

    .line 99644
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/mw;->A0e:[Ljava/nio/ByteBuffer;

    add-int/lit8 v6, v3, -0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/mw;->A10:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/mw;->A10:[Ljava/lang/String;

    const-string v1, "0P"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    aget-object v0, v5, v6

    .line 99645
    .local v2, "input":Ljava/nio/ByteBuffer;
    :goto_1
    if-ne v3, v4, :cond_2

    .line 99646
    invoke-direct {p0, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/mw;->A0e(Ljava/nio/ByteBuffer;J)V

    .line 99647
    .end local v3
    .end local v4
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99648
    return-void

    .line 99649
    .end local v2    # "input":Ljava/nio/ByteBuffer;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    .line 99650
    goto :goto_0

    .line 99651
    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/mw;->A0d:[Lcom/facebook/ads/redexgen/X/38;

    aget-object v2, v1, v3

    .line 99652
    .local v3, "audioProcessor":Lcom/facebook/ads/redexgen/X/38;
    iget v1, p0, Lcom/facebook/ads/redexgen/X/mw;->A03:I

    if-le v3, v1, :cond_3

    .line 99653
    invoke-interface {v2, v0}, Lcom/facebook/ads/redexgen/X/38;->AGX(Ljava/nio/ByteBuffer;)V

    .line 99654
    :cond_3
    invoke-interface {v2}, Lcom/facebook/ads/redexgen/X/38;->A8V()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 99655
    .local v4, "output":Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/mw;->A0e:[Ljava/nio/ByteBuffer;

    aput-object v2, v1, v3

    .line 99656
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99657
    add-int/lit8 v3, v3, 0x1

    .line 99658
    goto :goto_0

    .line 99659
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0Q:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0Q:Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_5
    sget-object v0, Lcom/facebook/ads/redexgen/X/38;->A00:Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 99660
    :cond_7
    return-void
.end method

.method private A0W(Landroid/media/AudioTrack;)V
    .locals 4

    .line 99661
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0O:Lcom/facebook/ads/redexgen/X/8n;

    if-nez v0, :cond_0

    .line 99662
    new-instance v0, Lcom/facebook/ads/redexgen/X/8n;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/8n;-><init>(Lcom/facebook/ads/redexgen/X/mw;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0O:Lcom/facebook/ads/redexgen/X/8n;

    .line 99663
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/mw;->A0O:Lcom/facebook/ads/redexgen/X/8n;

    sget-object v2, Lcom/facebook/ads/redexgen/X/mw;->A10:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/mw;->A10:[Ljava/lang/String;

    const-string v1, "8t8nFWsxRl9HTQxqXeO3m9pm7diLrI9Q"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {v3, p1}, Lcom/facebook/ads/redexgen/X/8n;->A00(Landroid/media/AudioTrack;)V

    .line 99664
    return-void
.end method

.method public static A0X(Landroid/media/AudioTrack;F)V
    .locals 0

    .line 99665
    invoke-virtual {p0, p1}, Landroid/media/AudioTrack;->setVolume(F)I

    .line 99666
    return-void
.end method

.method public static A0Y(Landroid/media/AudioTrack;F)V
    .locals 0

    .line 99667
    invoke-virtual {p0, p1, p1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    .line 99668
    return-void
.end method

.method private A0Z(Landroid/media/AudioTrack;Lcom/facebook/ads/redexgen/X/3W;Lcom/facebook/ads/redexgen/X/8J;Lcom/facebook/ads/redexgen/X/8F;)V
    .locals 10

    .line 99669
    move-object v9, p2

    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/3W;->A02()Z

    .line 99670
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 99671
    .local v3, "audioTrackThreadHandler":Landroid/os/Handler;
    sget-object v3, Lcom/facebook/ads/redexgen/X/mw;->A11:Ljava/lang/Object;

    monitor-enter v3

    .line 99672
    :try_start_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/mw;->A0x:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 99673
    const/16 v2, 0x17

    const/16 v1, 0x21

    const/16 v0, 0x15

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/mw;->A0L(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A0u(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/mw;->A0x:Ljava/util/concurrent/ExecutorService;

    .line 99674
    :cond_0
    sget v0, Lcom/facebook/ads/redexgen/X/mw;->A0w:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/facebook/ads/redexgen/X/mw;->A0w:I

    .line 99675
    sget-object v0, Lcom/facebook/ads/redexgen/X/mw;->A0x:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lcom/facebook/ads/redexgen/X/8Y;

    move-object v8, p4

    move-object v6, p3

    move-object v5, p1

    invoke-direct/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/8Y;-><init>(Landroid/media/AudioTrack;Lcom/facebook/ads/redexgen/X/8J;Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/8F;Lcom/facebook/ads/redexgen/X/3W;)V

    invoke-interface {v0, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 99676
    monitor-exit v3

    .line 99677
    return-void

    .line 99678
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static synthetic A0a(Landroid/media/AudioTrack;Lcom/facebook/ads/redexgen/X/8J;Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/8F;Lcom/facebook/ads/redexgen/X/3W;)V
    .locals 4

    .line 99679
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/media/AudioTrack;->flush()V

    .line 99680
    invoke-virtual {p0}, Landroid/media/AudioTrack;->release()V

    .line 99681
    if-eqz p1, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99682
    new-instance v0, Lcom/facebook/ads/redexgen/X/8X;

    invoke-direct {v0, p1, p3}, Lcom/facebook/ads/redexgen/X/8X;-><init>(Lcom/facebook/ads/redexgen/X/8J;Lcom/facebook/ads/redexgen/X/8F;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 99683
    :cond_0
    invoke-virtual {p4}, Lcom/facebook/ads/redexgen/X/3W;->A04()Z

    .line 99684
    sget-object v1, Lcom/facebook/ads/redexgen/X/mw;->A11:Ljava/lang/Object;

    monitor-enter v1

    .line 99685
    :try_start_1
    sget v0, Lcom/facebook/ads/redexgen/X/mw;->A0w:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/facebook/ads/redexgen/X/mw;->A0w:I

    .line 99686
    sget v0, Lcom/facebook/ads/redexgen/X/mw;->A0w:I

    if-nez v0, :cond_1

    .line 99687
    sget-object v0, Lcom/facebook/ads/redexgen/X/mw;->A0x:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 99688
    sput-object v3, Lcom/facebook/ads/redexgen/X/mw;->A0x:Ljava/util/concurrent/ExecutorService;

    .line 99689
    :cond_1
    monitor-exit v1

    .line 99690
    return-void

    .line 99691
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 99692
    :catchall_1
    move-exception v2

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 99693
    new-instance v0, Lcom/facebook/ads/redexgen/X/8X;

    invoke-direct {v0, p1, p3}, Lcom/facebook/ads/redexgen/X/8X;-><init>(Lcom/facebook/ads/redexgen/X/8J;Lcom/facebook/ads/redexgen/X/8F;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 99694
    :cond_2
    invoke-virtual {p4}, Lcom/facebook/ads/redexgen/X/3W;->A04()Z

    .line 99695
    sget-object v1, Lcom/facebook/ads/redexgen/X/mw;->A11:Ljava/lang/Object;

    monitor-enter v1

    .line 99696
    :try_start_2
    sget v0, Lcom/facebook/ads/redexgen/X/mw;->A0w:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/facebook/ads/redexgen/X/mw;->A0w:I

    .line 99697
    sget v0, Lcom/facebook/ads/redexgen/X/mw;->A0w:I

    if-nez v0, :cond_3

    .line 99698
    sget-object v0, Lcom/facebook/ads/redexgen/X/mw;->A0x:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 99699
    sput-object v3, Lcom/facebook/ads/redexgen/X/mw;->A0x:Ljava/util/concurrent/ExecutorService;

    .line 99700
    :cond_3
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 99701
    throw v2

    .line 99702
    :catchall_2
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0
.end method

.method private A0b(Lcom/facebook/ads/redexgen/X/ob;)V
    .locals 5

    .line 99703
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/mw;->A0h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99704
    new-instance v0, Landroid/media/PlaybackParams;

    invoke-direct {v0}, Landroid/media/PlaybackParams;-><init>()V

    .line 99705
    invoke-virtual {v0}, Landroid/media/PlaybackParams;->allowDefaults()Landroid/media/PlaybackParams;

    move-result-object v1

    iget v0, p1, Lcom/facebook/ads/redexgen/X/ob;->A01:F

    .line 99706
    invoke-virtual {v1, v0}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    move-result-object v1

    iget v0, p1, Lcom/facebook/ads/redexgen/X/ob;->A00:F

    .line 99707
    invoke-virtual {v1, v0}, Landroid/media/PlaybackParams;->setPitch(F)Landroid/media/PlaybackParams;

    move-result-object v1

    .line 99708
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Landroid/media/PlaybackParams;->setAudioFallbackMode(I)Landroid/media/PlaybackParams;

    move-result-object v1

    .line 99709
    .local v0, "playbackParams":Landroid/media/PlaybackParams;
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0D:Landroid/media/AudioTrack;

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->setPlaybackParams(Landroid/media/PlaybackParams;)V

    goto :goto_0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99710
    :catch_0
    move-exception v4

    .line 99711
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const/4 v2, 0x7

    const/16 v1, 0x10

    const/16 v0, 0x17

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/mw;->A0L(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x38

    const/16 v1, 0x1d

    const/16 v0, 0x59

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/mw;->A0L(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Lcom/facebook/ads/redexgen/X/44;->A0A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 99712
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0D:Landroid/media/AudioTrack;

    .line 99713
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlaybackParams()Landroid/media/PlaybackParams;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/PlaybackParams;->getSpeed()F

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0D:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlaybackParams()Landroid/media/PlaybackParams;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/PlaybackParams;->getPitch()F

    move-result v0

    new-instance p1, Lcom/facebook/ads/redexgen/X/ob;

    invoke-direct {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/ob;-><init>(FF)V

    .line 99714
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/mw;->A0k:Lcom/facebook/ads/redexgen/X/8T;

    iget v0, p1, Lcom/facebook/ads/redexgen/X/ob;->A01:F

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/8T;->A0G(F)V

    .line 99715
    .end local v0    # "playbackParams":Landroid/media/PlaybackParams;
    :cond_0
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/mw;->A0G:Lcom/facebook/ads/redexgen/X/ob;

    .line 99716
    return-void
.end method

.method private A0c(Lcom/facebook/ads/redexgen/X/ob;Z)V
    .locals 9

    .line 99717
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/mw;->A0K()Lcom/facebook/ads/redexgen/X/8h;

    move-result-object v1

    .line 99718
    .local v0, "currentMediaPositionParameters":Lcom/facebook/ads/redexgen/X/8h;
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/8h;->A02:Lcom/facebook/ads/redexgen/X/ob;

    move-object v2, p1

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/ob;->equals(Ljava/lang/Object;)Z

    move-result v0

    move v3, p2

    if-eqz v0, :cond_0

    iget-boolean v0, v1, Lcom/facebook/ads/redexgen/X/8h;->A03:Z

    if-eq v3, v0, :cond_1

    .line 99719
    :cond_0
    new-instance v1, Lcom/facebook/ads/redexgen/X/8h;

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v8, 0x0

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct/range {v1 .. v8}, Lcom/facebook/ads/redexgen/X/8h;-><init>(Lcom/facebook/ads/redexgen/X/ob;ZJJLcom/facebook/ads/redexgen/X/8Z;)V

    .line 99720
    .local v1, "mediaPositionParameters":Lcom/facebook/ads/redexgen/X/8h;
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/mw;->A0h()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 99721
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/mw;->A0M:Lcom/facebook/ads/redexgen/X/8h;

    .line 99722
    .end local v1    # "mediaPositionParameters":Lcom/facebook/ads/redexgen/X/8h;
    :cond_1
    :goto_0
    return-void

    .line 99723
    :cond_2
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/mw;->A0N:Lcom/facebook/ads/redexgen/X/8h;

    goto :goto_0
.end method

.method public static synthetic A0d(Lcom/facebook/ads/redexgen/X/8J;Lcom/facebook/ads/redexgen/X/8F;)V
    .locals 0

    .line 99724
    invoke-interface {p0, p1}, Lcom/facebook/ads/redexgen/X/8J;->ACX(Lcom/facebook/ads/redexgen/X/8F;)V

    return-void
.end method

.method private A0e(Ljava/nio/ByteBuffer;J)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/8M;
        }
    .end annotation

    .line 99725
    move-object v8, p1

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    .line 99726
    return-void

    .line 99727
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0R:Ljava/nio/ByteBuffer;

    const/16 v6, 0x15

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_9

    .line 99728
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0R:Ljava/nio/ByteBuffer;

    if-ne v0, v8, :cond_8

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A07(Z)V

    .line 99729
    .end local v0
    .end local v4
    :cond_1
    :goto_1
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v9

    sget-object v2, Lcom/facebook/ads/redexgen/X/mw;->A10:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_14

    .line 99730
    .restart local v0
    sget-object v2, Lcom/facebook/ads/redexgen/X/mw;->A10:[Ljava/lang/String;

    const-string v1, "3eWYirSbyPmDL1bYCzZXBxfzFZ0IdKrC"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "GyxGkXW2OhP0jBJSoZP6T4LL67dzWnKX"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const/4 v5, 0x0

    .line 99731
    .local v4, "bytesWrittenOrError":I
    sget v0, Lcom/facebook/ads/redexgen/X/4a;->A02:I

    if-ge v0, v6, :cond_5

    .line 99732
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/mw;->A0k:Lcom/facebook/ads/redexgen/X/8T;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0C:J

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/8T;->A0C(J)I

    move-result v0

    .line 99733
    .local v1, "bytesToWrite":I
    if-lez v0, :cond_2

    .line 99734
    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 99735
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/mw;->A0D:Landroid/media/AudioTrack;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/mw;->A0c:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A06:I

    .line 99736
    invoke-virtual {v2, v1, v0, v5}, Landroid/media/AudioTrack;->write([BII)I

    move-result v5

    .line 99737
    if-lez v5, :cond_2

    .line 99738
    iget v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A06:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A06:I

    .line 99739
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, v5

    invoke-virtual {v8, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 99740
    :cond_2
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A07:J

    .line 99741
    const-wide/16 v6, 0x0

    if-gez v5, :cond_d

    .line 99742
    .local v1, "error":I
    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/mw;->A0k(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/mw;->A0B:J

    cmp-long v0, v1, v6

    if-lez v0, :cond_4

    .line 99743
    .local v2, "isRecoverable":Z
    :goto_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0K:Lcom/facebook/ads/redexgen/X/8f;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/8f;->A07:Lcom/facebook/ads/redexgen/X/or;

    new-instance v1, Lcom/facebook/ads/redexgen/X/8M;

    invoke-direct {v1, v5, v0, v4}, Lcom/facebook/ads/redexgen/X/8M;-><init>(ILcom/facebook/ads/redexgen/X/or;Z)V

    .line 99744
    .local v3, "e":Lcom/facebook/ads/redexgen/X/8M;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0I:Lcom/facebook/ads/redexgen/X/8J;

    if-eqz v0, :cond_3

    .line 99745
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0I:Lcom/facebook/ads/redexgen/X/8J;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/8J;->ACV(Ljava/lang/Exception;)V

    .line 99746
    :cond_3
    iget-boolean v0, v1, Lcom/facebook/ads/redexgen/X/8M;->A02:Z

    if-nez v0, :cond_c

    .line 99747
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0o:Lcom/facebook/ads/redexgen/X/8k;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/8k;->A01(Ljava/lang/Exception;)V

    .line 99748
    return-void

    .line 99749
    :cond_4
    const/4 v4, 0x0

    goto :goto_3

    .line 99750
    :cond_5
    iget-boolean v5, p0, Lcom/facebook/ads/redexgen/X/mw;->A0b:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/mw;->A10:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x43

    if-eq v1, v0, :cond_14

    sget-object v2, Lcom/facebook/ads/redexgen/X/mw;->A10:[Ljava/lang/String;

    const-string v1, "ZkKj9ZygtLpdvIDMWffq04xWvvg8fJzl"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eqz v5, :cond_7

    .line 99751
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v10, p2

    cmp-long v0, v10, v1

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_4
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A08(Z)V

    .line 99752
    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/mw;->A0D:Landroid/media/AudioTrack;

    .line 99753
    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/facebook/ads/redexgen/X/mw;->A05(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;IJ)I

    move-result v5

    goto :goto_2

    .line 99754
    :cond_6
    const/4 v0, 0x0

    goto :goto_4

    .line 99755
    :cond_7
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0D:Landroid/media/AudioTrack;

    invoke-static {v0, v8, v9}, Lcom/facebook/ads/redexgen/X/mw;->A04(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I

    move-result v5

    goto :goto_2

    .line 99756
    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 99757
    :cond_9
    iput-object v8, p0, Lcom/facebook/ads/redexgen/X/mw;->A0R:Ljava/nio/ByteBuffer;

    .line 99758
    sget v0, Lcom/facebook/ads/redexgen/X/4a;->A02:I

    if-ge v0, v6, :cond_1

    .line 99759
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 99760
    .local v0, "bytesRemaining":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0c:[B

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0c:[B

    array-length v0, v0

    if-ge v0, v2, :cond_b

    .line 99761
    :cond_a
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0c:[B

    .line 99762
    :cond_b
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 99763
    .local v4, "originalPosition":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0c:[B

    invoke-virtual {v8, v0, v3, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 99764
    invoke-virtual {v8, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 99765
    iput v3, p0, Lcom/facebook/ads/redexgen/X/mw;->A06:I

    goto/16 :goto_1

    .line 99766
    :cond_c
    throw v1

    .line 99767
    .end local v1    # "error":I
    .end local v2    # "isRecoverable":Z
    .end local v3    # "e":Lcom/facebook/ads/redexgen/X/8M;
    :cond_d
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0o:Lcom/facebook/ads/redexgen/X/8k;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8k;->A00()V

    .line 99768
    .local v1, "bytesWritten":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0D:Landroid/media/AudioTrack;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/mw;->A0l(Landroid/media/AudioTrack;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 99769
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0B:J

    cmp-long v2, v0, v6

    if-lez v2, :cond_e

    .line 99770
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/mw;->A0V:Z

    .line 99771
    :cond_e
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0X:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0I:Lcom/facebook/ads/redexgen/X/8J;

    if-eqz v0, :cond_f

    if-ge v5, v9, :cond_f

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0V:Z

    if-nez v0, :cond_f

    .line 99772
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0I:Lcom/facebook/ads/redexgen/X/8J;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/8J;->AEO()V

    .line 99773
    :cond_f
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0K:Lcom/facebook/ads/redexgen/X/8f;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/8f;->A04:I

    if-nez v0, :cond_10

    .line 99774
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/mw;->A0C:J

    int-to-long v0, v5

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/mw;->A0C:J

    .line 99775
    :cond_10
    if-ne v5, v9, :cond_12

    .line 99776
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0K:Lcom/facebook/ads/redexgen/X/8f;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/8f;->A04:I

    if-eqz v0, :cond_11

    .line 99777
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0Q:Ljava/nio/ByteBuffer;

    if-ne v8, v0, :cond_13

    :goto_5
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/3M;->A08(Z)V

    .line 99778
    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/mw;->A0B:J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A04:I

    int-to-long v2, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A05:I

    int-to-long v0, v0

    mul-long/2addr v2, v0

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/facebook/ads/redexgen/X/mw;->A0B:J

    .line 99779
    :cond_11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0R:Ljava/nio/ByteBuffer;

    .line 99780
    :cond_12
    return-void

    .line 99781
    :cond_13
    const/4 v4, 0x0

    goto :goto_5

    :cond_14
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0f()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/8M;
        }
    .end annotation

    .line 99782
    const/4 v7, 0x0

    .line 99783
    .local v0, "audioProcessorNeedsEndOfStream":Z
    iget v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A03:I

    const/4 v4, 0x0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 99784
    iput v4, p0, Lcom/facebook/ads/redexgen/X/mw;->A03:I

    .line 99785
    const/4 v7, 0x1

    .line 99786
    :cond_0
    :goto_0
    iget v5, p0, Lcom/facebook/ads/redexgen/X/mw;->A03:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0d:[Lcom/facebook/ads/redexgen/X/38;

    array-length v0, v0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, 0x1

    if-ge v5, v0, :cond_4

    .line 99787
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/mw;->A0d:[Lcom/facebook/ads/redexgen/X/38;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A03:I

    aget-object v0, v5, v0

    .line 99788
    .local v1, "audioProcessor":Lcom/facebook/ads/redexgen/X/38;
    if-eqz v7, :cond_1

    .line 99789
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/38;->AGW()V

    .line 99790
    :cond_1
    invoke-direct {p0, v1, v2}, Lcom/facebook/ads/redexgen/X/mw;->A0V(J)V

    .line 99791
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/38;->AAG()Z

    move-result v5

    sget-object v2, Lcom/facebook/ads/redexgen/X/mw;->A10:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/mw;->A10:[Ljava/lang/String;

    const-string v1, "SZlzkFrjT9RrDQln4ds2mG9At4QQTsjU"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "7YjBVNvSPjH845plY2W9SI0PPB4m8Pgz"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-nez v5, :cond_2

    .line 99792
    return v4

    .line 99793
    :cond_2
    const/4 v7, 0x1

    .line 99794
    iget v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A03:I

    add-int/2addr v0, v6

    iput v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A03:I

    .line 99795
    .end local v1    # "audioProcessor":Lcom/facebook/ads/redexgen/X/38;
    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 99796
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0R:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_6

    .line 99797
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0R:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0, v1, v2}, Lcom/facebook/ads/redexgen/X/mw;->A0e(Ljava/nio/ByteBuffer;J)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/mw;->A10:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_5

    .line 99798
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0R:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_6

    .line 99799
    :goto_1
    return v4

    .line 99800
    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/mw;->A10:[Ljava/lang/String;

    const-string v1, "ih"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0R:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_6

    goto :goto_1

    .line 99801
    :cond_6
    iput v3, p0, Lcom/facebook/ads/redexgen/X/mw;->A03:I

    .line 99802
    return v6
.end method

.method private A0g()Z
    .locals 10
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        type = {
            "MERGED"
        }
        value = "D45157249: Retry Audio Track Init failure with less Audio track allocation sizes; Upstream has this feature"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/8H;
        }
    .end annotation

    .line 99803
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0h:Lcom/facebook/ads/redexgen/X/3W;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/3W;->A03()Z

    move-result v1

    const/4 v0, 0x0

    if-nez v1, :cond_0

    .line 99804
    return v0

    .line 99805
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0S:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/mw;->A0F()Landroid/media/AudioTrack;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0D:Landroid/media/AudioTrack;

    sget-object v2, Lcom/facebook/ads/redexgen/X/mw;->A10:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0K:Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/mw;->A0G(Lcom/facebook/ads/redexgen/X/8f;)Landroid/media/AudioTrack;

    move-result-object v0

    goto :goto_0

    .line 99806
    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/mw;->A10:[Ljava/lang/String;

    const-string v1, "dWhjJD4ryPYmrGCHimoCOlqhHDAwt6Vc"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "fifoJCnFOIc3PbrGHGLYECSFH4AKcCFA"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0D:Landroid/media/AudioTrack;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/mw;->A0l(Landroid/media/AudioTrack;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 99807
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0D:Landroid/media/AudioTrack;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/mw;->A0W(Landroid/media/AudioTrack;)V

    .line 99808
    iget v1, p0, Lcom/facebook/ads/redexgen/X/mw;->A0f:I

    const/4 v0, 0x3

    if-eq v1, v0, :cond_3

    .line 99809
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/mw;->A0D:Landroid/media/AudioTrack;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0K:Lcom/facebook/ads/redexgen/X/8f;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/8f;->A07:Lcom/facebook/ads/redexgen/X/or;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/or;->A08:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0K:Lcom/facebook/ads/redexgen/X/8f;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/8f;->A07:Lcom/facebook/ads/redexgen/X/or;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/or;->A09:I

    invoke-virtual {v2, v1, v0}, Landroid/media/AudioTrack;->setOffloadDelayPadding(II)V

    .line 99810
    :cond_3
    sget v1, Lcom/facebook/ads/redexgen/X/4a;->A02:I

    const/16 v0, 0x1f

    if-lt v1, v0, :cond_4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0H:Lcom/facebook/ads/redexgen/X/7m;

    if-eqz v0, :cond_4

    .line 99811
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/mw;->A0D:Landroid/media/AudioTrack;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0H:Lcom/facebook/ads/redexgen/X/7m;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/8b;->A00(Landroid/media/AudioTrack;Lcom/facebook/ads/redexgen/X/7m;)V

    .line 99812
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0D:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A01:I

    .line 99813
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/mw;->A0k:Lcom/facebook/ads/redexgen/X/8T;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/mw;->A0D:Landroid/media/AudioTrack;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0K:Lcom/facebook/ads/redexgen/X/8f;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/8f;->A04:I

    const/4 v0, 0x2

    const/4 v3, 0x1

    if-ne v1, v0, :cond_9

    const/4 v6, 0x1

    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0K:Lcom/facebook/ads/redexgen/X/8f;

    iget v7, v0, Lcom/facebook/ads/redexgen/X/8f;->A03:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0K:Lcom/facebook/ads/redexgen/X/8f;

    iget v8, v0, Lcom/facebook/ads/redexgen/X/8f;->A05:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0K:Lcom/facebook/ads/redexgen/X/8f;

    iget v9, v0, Lcom/facebook/ads/redexgen/X/8f;->A00:I

    invoke-virtual/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/8T;->A0I(Landroid/media/AudioTrack;ZIII)V

    .line 99814
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/mw;->A0R()V

    .line 99815
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0F:Lcom/facebook/ads/redexgen/X/1P;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/1P;->A01:I

    if-eqz v0, :cond_5

    .line 99816
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/mw;->A0D:Landroid/media/AudioTrack;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0F:Lcom/facebook/ads/redexgen/X/1P;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/1P;->A01:I

    invoke-virtual {v1, v0}, Landroid/media/AudioTrack;->attachAuxEffect(I)I

    .line 99817
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/mw;->A0D:Landroid/media/AudioTrack;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/mw;->A0F:Lcom/facebook/ads/redexgen/X/1P;

    sget-object v1, Lcom/facebook/ads/redexgen/X/mw;->A10:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x20

    if-eq v1, v0, :cond_8

    iget v0, v4, Lcom/facebook/ads/redexgen/X/1P;->A00:F

    invoke-virtual {v5, v0}, Landroid/media/AudioTrack;->setAuxEffectSendLevel(F)I

    .line 99818
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0J:Lcom/facebook/ads/redexgen/X/8c;

    if-eqz v0, :cond_6

    sget v1, Lcom/facebook/ads/redexgen/X/4a;->A02:I

    const/16 v0, 0x17

    if-lt v1, v0, :cond_6

    .line 99819
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/mw;->A0D:Landroid/media/AudioTrack;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0J:Lcom/facebook/ads/redexgen/X/8c;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/8a;->A00(Landroid/media/AudioTrack;Lcom/facebook/ads/redexgen/X/8c;)V

    .line 99820
    :cond_6
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/mw;->A0Y:Z

    .line 99821
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0I:Lcom/facebook/ads/redexgen/X/8J;

    if-eqz v0, :cond_7

    .line 99822
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/mw;->A0I:Lcom/facebook/ads/redexgen/X/8J;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0K:Lcom/facebook/ads/redexgen/X/8f;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8f;->A0B()Lcom/facebook/ads/redexgen/X/8F;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/8J;->ACW(Lcom/facebook/ads/redexgen/X/8F;)V

    .line 99823
    :cond_7
    return v3

    :cond_8
    sget-object v2, Lcom/facebook/ads/redexgen/X/mw;->A10:[Ljava/lang/String;

    const-string v1, "RIRRfrrRSIs4t73WNQ17weV6jTByi7uZ"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    iget v0, v4, Lcom/facebook/ads/redexgen/X/1P;->A00:F

    invoke-virtual {v5, v0}, Landroid/media/AudioTrack;->setAuxEffectSendLevel(F)I

    goto :goto_2

    .line 99824
    :cond_9
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private A0h()Z
    .locals 1

    .line 99825
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0D:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A0i()Z
    .locals 4

    .line 99826
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0K:Lcom/facebook/ads/redexgen/X/8f;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/8f;->A07:Lcom/facebook/ads/redexgen/X/or;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/or;->A0W:Ljava/lang/String;

    .line 99827
    const/16 v2, 0x10f

    const/16 v1, 0x9

    const/16 v0, 0x46

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/mw;->A0L(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0K:Lcom/facebook/ads/redexgen/X/8f;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/8f;->A07:Lcom/facebook/ads/redexgen/X/or;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/or;->A0C:I

    .line 99828
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/mw;->A0j(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 99829
    :goto_0
    return v0

    .line 99830
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A0j(I)Z
    .locals 1

    .line 99831
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0s:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/4a;->A14(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A0k(I)Z
    .locals 2

    .line 99832
    sget v1, Lcom/facebook/ads/redexgen/X/4a;->A02:I

    const/16 v0, 0x18

    if-lt v1, v0, :cond_0

    const/4 v0, -0x6

    if-eq p0, v0, :cond_1

    :cond_0
    const/16 v0, -0x20

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A0l(Landroid/media/AudioTrack;)Z
    .locals 2

    .line 99833
    sget v1, Lcom/facebook/ads/redexgen/X/4a;->A02:I

    const/16 v0, 0x1d

    if-lt v1, v0, :cond_0

    invoke-virtual {p0}, Landroid/media/AudioTrack;->isOffloadedPlayback()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A0m(Lcom/facebook/ads/redexgen/X/or;Lcom/facebook/ads/redexgen/X/oy;)Z
    .locals 4

    .line 99834
    sget v1, Lcom/facebook/ads/redexgen/X/4a;->A02:I

    const/16 v0, 0x1d

    const/4 v3, 0x0

    if-lt v1, v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0f:I

    if-nez v0, :cond_1

    .line 99835
    .end local v0
    .end local v1
    .end local v3
    :cond_0
    return v3

    .line 99836
    :cond_1
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/or;->A0W:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/or;->A0R:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A03(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 99837
    .local v0, "encoding":I
    if-nez v2, :cond_2

    .line 99838
    return v3

    .line 99839
    :cond_2
    iget v0, p1, Lcom/facebook/ads/redexgen/X/or;->A06:I

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A01(I)I

    move-result v1

    .line 99840
    .local v1, "channelConfig":I
    if-nez v1, :cond_3

    .line 99841
    return v3

    .line 99842
    :cond_3
    iget v0, p1, Lcom/facebook/ads/redexgen/X/or;->A0G:I

    invoke-static {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/mw;->A0D(III)Landroid/media/AudioFormat;

    move-result-object v1

    .line 99843
    .local v3, "audioFormat":Landroid/media/AudioFormat;
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/oy;->A01()Lcom/facebook/ads/redexgen/X/1N;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/1N;->A00:Landroid/media/AudioAttributes;

    .line 99844
    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/mw;->A03(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)I

    move-result v0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 99845
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 99846
    :pswitch_0
    return v2

    .line 99847
    :pswitch_1
    iget v0, p1, Lcom/facebook/ads/redexgen/X/or;->A08:I

    if-nez v0, :cond_4

    iget v0, p1, Lcom/facebook/ads/redexgen/X/or;->A09:I

    if-eqz v0, :cond_8

    :cond_4
    const/4 v1, 0x1

    .line 99848
    .local p0, "isGapless":Z
    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0f:I

    if-ne v0, v2, :cond_7

    const/4 v0, 0x1

    .line 99849
    .local p2, "gaplessSupportRequired":Z
    :goto_1
    if-eqz v1, :cond_5

    if-nez v0, :cond_6

    :cond_5
    const/4 v3, 0x1

    :cond_6
    return v3

    .line 99850
    :cond_7
    const/4 v0, 0x0

    goto :goto_1

    .line 99851
    :cond_8
    const/4 v1, 0x0

    goto :goto_0

    .line 99852
    .end local p0    # "isGapless":Z
    .end local p2    # "gaplessSupportRequired":Z
    :pswitch_2
    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic A0n(Lcom/facebook/ads/redexgen/X/mw;)Z
    .locals 0

    .line 99853
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0X:Z

    return p0
.end method


# virtual methods
.method public final A0o(Lcom/facebook/ads/redexgen/X/or;)I
    .locals 5

    .line 99854
    const/16 v2, 0x10f

    const/16 v1, 0x9

    const/16 v0, 0x46

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/mw;->A0L(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/or;->A0W:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_4

    .line 99855
    iget v0, p1, Lcom/facebook/ads/redexgen/X/or;->A0C:I

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A15(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99856
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x55

    const/16 v1, 0x16

    const/16 v0, 0x8

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/mw;->A0L(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p1, Lcom/facebook/ads/redexgen/X/or;->A0C:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x7

    const/16 v1, 0x10

    const/16 v0, 0x17

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/mw;->A0L(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/44;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 99857
    return v4

    .line 99858
    :cond_0
    iget v4, p1, Lcom/facebook/ads/redexgen/X/or;->A0C:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/mw;->A10:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x20

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/mw;->A10:[Ljava/lang/String;

    const-string v1, "pL"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eq v4, v3, :cond_2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0s:Z

    if-eqz v0, :cond_3

    iget v1, p1, Lcom/facebook/ads/redexgen/X/or;->A0C:I

    const/4 v0, 0x4

    if-ne v1, v0, :cond_3

    .line 99859
    :cond_2
    return v3

    .line 99860
    :cond_3
    const/4 v0, 0x1

    return v0

    .line 99861
    :cond_4
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0W:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0E:Lcom/facebook/ads/redexgen/X/oy;

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/mw;->A0m(Lcom/facebook/ads/redexgen/X/or;Lcom/facebook/ads/redexgen/X/oy;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 99862
    return v3

    .line 99863
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0j:Lcom/facebook/ads/redexgen/X/7p;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/7p;->A0B(Lcom/facebook/ads/redexgen/X/or;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 99864
    return v3

    .line 99865
    :cond_6
    return v4
.end method

.method public final A0p()Z
    .locals 1

    .line 99866
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/mw;->A0K()Lcom/facebook/ads/redexgen/X/8h;

    move-result-object v0

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/8h;->A03:Z

    return v0
.end method

.method public final A51(Lcom/facebook/ads/redexgen/X/or;I[I)V
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/8G;
        }
    .end annotation

    .line 99867
    move/from16 v14, p2

    move-object/from16 v4, p3

    move-object/from16 v1, p0

    const/16 v3, 0x10f

    const/16 v2, 0x9

    const/16 v0, 0x46

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/mw;->A0L(III)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v7, p1

    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/or;->A0W:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 99868
    iget v0, v7, Lcom/facebook/ads/redexgen/X/or;->A0C:I

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A15(I)Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A07(Z)V

    .line 99869
    iget v3, v7, Lcom/facebook/ads/redexgen/X/or;->A0C:I

    iget v0, v7, Lcom/facebook/ads/redexgen/X/or;->A06:I

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/4a;->A06(II)I

    move-result v8

    .line 99870
    .local v3, "inputPcmFrameSize":I
    iget v0, v7, Lcom/facebook/ads/redexgen/X/or;->A0C:I

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/mw;->A0j(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99871
    iget-object v15, v1, Lcom/facebook/ads/redexgen/X/mw;->A0t:[Lcom/facebook/ads/redexgen/X/38;

    .line 99872
    .local v4, "availableAudioProcessors":[Lcom/facebook/ads/redexgen/X/38;
    :goto_0
    iget-object v5, v1, Lcom/facebook/ads/redexgen/X/mw;->A0p:Lcom/facebook/ads/redexgen/X/9I;

    iget v3, v7, Lcom/facebook/ads/redexgen/X/or;->A08:I

    iget v0, v7, Lcom/facebook/ads/redexgen/X/or;->A09:I

    invoke-virtual {v5, v3, v0}, Lcom/facebook/ads/redexgen/X/9I;->A0E(II)V

    .line 99873
    sget v3, Lcom/facebook/ads/redexgen/X/4a;->A02:I

    const/16 v0, 0x15

    if-ge v3, v0, :cond_1

    iget v3, v7, Lcom/facebook/ads/redexgen/X/or;->A06:I

    const/16 v0, 0x8

    if-ne v3, v0, :cond_1

    if-nez v4, :cond_1

    .line 99874
    const/4 v0, 0x6

    new-array v4, v0, [I

    .line 99875
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/or;
    .local v0, "outputChannels":[I
    const/4 v3, 0x0

    .local v5, "i":I
    :goto_1
    array-length v0, v4

    if-ge v3, v0, :cond_1

    .line 99876
    aput v3, v4, v3

    .line 99877
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 99878
    :cond_0
    iget-object v15, v1, Lcom/facebook/ads/redexgen/X/mw;->A0u:[Lcom/facebook/ads/redexgen/X/38;

    goto :goto_0

    .line 99879
    .end local p1
    .local v5, "outputChannels":[I
    :cond_1
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/mw;->A0l:Lcom/facebook/ads/redexgen/X/9N;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/9N;->A0C([I)V

    .line 99880
    iget v4, v7, Lcom/facebook/ads/redexgen/X/or;->A0G:I

    iget v3, v7, Lcom/facebook/ads/redexgen/X/or;->A06:I

    iget v0, v7, Lcom/facebook/ads/redexgen/X/or;->A0C:I

    new-instance v5, Lcom/facebook/ads/redexgen/X/36;

    invoke-direct {v5, v4, v3, v0}, Lcom/facebook/ads/redexgen/X/36;-><init>(III)V

    .line 99881
    .local v0, "outputFormat":Lcom/facebook/ads/redexgen/X/36;
    array-length v6, v15

    const/4 v4, 0x0

    .end local v0    # "outputFormat":Lcom/facebook/ads/redexgen/X/36;
    .local v7, "outputFormat":Lcom/facebook/ads/redexgen/X/36;
    :goto_2
    if-ge v4, v6, :cond_3

    aget-object v0, v15, v4

    .line 99882
    .local v8, "audioProcessor":Lcom/facebook/ads/redexgen/X/38;
    :try_start_0
    invoke-interface {v0, v5}, Lcom/facebook/ads/redexgen/X/38;->A4z(Lcom/facebook/ads/redexgen/X/36;)Lcom/facebook/ads/redexgen/X/36;

    move-result-object v3

    .line 99883
    .local v9, "nextFormat":Lcom/facebook/ads/redexgen/X/36;
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/38;->AAC()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 99884
    move-object v5, v3

    .line 99885
    .end local v9    # "nextFormat":Lcom/facebook/ads/redexgen/X/36;
    .end local v8    # "audioProcessor":Lcom/facebook/ads/redexgen/X/38;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/37; {:try_start_0 .. :try_end_0} :catch_0

    .line 99886
    .restart local v8    # "audioProcessor":Lcom/facebook/ads/redexgen/X/38;
    :catch_0
    move-exception v1

    .line 99887
    .local v0, "e":Lcom/facebook/ads/redexgen/X/37;
    new-instance v0, Lcom/facebook/ads/redexgen/X/8G;

    invoke-direct {v0, v1, v7}, Lcom/facebook/ads/redexgen/X/8G;-><init>(Ljava/lang/Throwable;Lcom/facebook/ads/redexgen/X/or;)V

    throw v0

    .line 99888
    .end local v0    # "e":Lcom/facebook/ads/redexgen/X/37;
    .end local v8    # "audioProcessor":Lcom/facebook/ads/redexgen/X/38;
    :cond_3
    const/4 v9, 0x0

    .line 99889
    .local v0, "outputMode":I
    iget v13, v5, Lcom/facebook/ads/redexgen/X/36;->A02:I

    .line 99890
    .local v6, "outputEncoding":I
    iget v11, v5, Lcom/facebook/ads/redexgen/X/36;->A03:I

    .line 99891
    .local v8, "outputSampleRate":I
    iget v0, v5, Lcom/facebook/ads/redexgen/X/36;->A01:I

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A01(I)I

    move-result v12

    .line 99892
    .local v9, "outputChannelConfig":I
    iget v0, v5, Lcom/facebook/ads/redexgen/X/36;->A01:I

    invoke-static {v13, v0}, Lcom/facebook/ads/redexgen/X/4a;->A06(II)I

    move-result v10

    .line 99893
    .local v7, "outputPcmFrameSize":I
    goto :goto_3

    .line 99894
    .end local v0    # "outputMode":I
    .end local v3    # "inputPcmFrameSize":I
    .end local v4    # "availableAudioProcessors":[Lcom/facebook/ads/redexgen/X/38;
    .end local v5    # "outputChannels":[I
    .end local v6    # "outputEncoding":I
    .end local v7    # "outputPcmFrameSize":I
    .end local v8    # "outputSampleRate":I
    .end local v9    # "outputChannelConfig":I
    .restart local p1    # null:Lcom/facebook/ads/redexgen/X/or;
    :cond_4
    const/4 v8, -0x1

    .line 99895
    .restart local v3    # "inputPcmFrameSize":I
    new-array v15, v2, [Lcom/facebook/ads/redexgen/X/38;

    .line 99896
    .restart local v4    # "availableAudioProcessors":[Lcom/facebook/ads/redexgen/X/38;
    iget v11, v7, Lcom/facebook/ads/redexgen/X/or;->A0G:I

    .line 99897
    .restart local v8    # "outputSampleRate":I
    const/4 v10, -0x1

    .line 99898
    .restart local v7    # "outputPcmFrameSize":I
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/mw;->A0E:Lcom/facebook/ads/redexgen/X/oy;

    invoke-direct {v1, v7, v0}, Lcom/facebook/ads/redexgen/X/mw;->A0m(Lcom/facebook/ads/redexgen/X/or;Lcom/facebook/ads/redexgen/X/oy;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 99899
    const/4 v9, 0x1

    .line 99900
    .restart local v0    # "outputMode":I
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/or;->A0W:Ljava/lang/String;

    .line 99901
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/or;->A0R:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/2h;->A03(Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 99902
    .restart local v6    # "outputEncoding":I
    iget v0, v7, Lcom/facebook/ads/redexgen/X/or;->A06:I

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A01(I)I

    move-result v12

    .line 99903
    .restart local v9    # "outputChannelConfig":I
    .end local v3    # "inputPcmFrameSize":I
    .end local v4    # "availableAudioProcessors":[Lcom/facebook/ads/redexgen/X/38;
    .end local v5
    .end local v6    # "outputEncoding":I
    .end local v7    # "outputPcmFrameSize":I
    .end local v8    # "outputSampleRate":I
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/or;
    .local v0, "outputChannels":[I
    .restart local v9    # "outputChannelConfig":I
    .local v10, "outputPcmFrameSize":I
    .local v11, "outputSampleRate":I
    .local v12, "outputEncoding":I
    .local v14, "outputMode":I
    .local v15, "inputPcmFrameSize":I
    .local v16, "availableAudioProcessors":[Lcom/facebook/ads/redexgen/X/38;
    :goto_3
    const/4 v4, 0x0

    const/4 v3, 0x7

    const/16 v0, 0x72

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/mw;->A0L(III)Ljava/lang/String;

    move-result-object v3

    if-eqz v13, :cond_d

    .line 99904
    if-eqz v12, :cond_c

    .line 99905
    if-eqz v14, :cond_6

    .line 99906
    .local v10, "bufferSize":I
    :goto_4
    iput-boolean v2, v1, Lcom/facebook/ads/redexgen/X/mw;->A0W:Z

    .line 99907
    new-instance v6, Lcom/facebook/ads/redexgen/X/8f;

    iget-boolean v0, v1, Lcom/facebook/ads/redexgen/X/mw;->A0b:Z

    .end local v12    # "outputEncoding":I
    .local v22, "outputEncoding":I
    move/from16 v16, v0

    invoke-direct/range {v6 .. v16}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Lcom/facebook/ads/redexgen/X/or;IIIIIII[Lcom/facebook/ads/redexgen/X/38;Z)V

    .line 99908
    .local v2, "pendingConfiguration":Lcom/facebook/ads/redexgen/X/8f;
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/mw;->A0h()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 99909
    iput-object v6, v1, Lcom/facebook/ads/redexgen/X/mw;->A0L:Lcom/facebook/ads/redexgen/X/8f;

    .line 99910
    :goto_5
    return-void

    .line 99911
    :cond_5
    iput-object v6, v1, Lcom/facebook/ads/redexgen/X/mw;->A0K:Lcom/facebook/ads/redexgen/X/8f;

    goto :goto_5

    .line 99912
    :cond_6
    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/mw;->A0m:Lcom/facebook/ads/redexgen/X/8d;

    .line 99913
    invoke-static {v11, v12, v13}, Lcom/facebook/ads/redexgen/X/mw;->A01(III)I

    move-result v17

    .line 99914
    const/4 v0, -0x1

    if-eq v10, v0, :cond_8

    move/from16 v20, v10

    :goto_6
    iget v0, v7, Lcom/facebook/ads/redexgen/X/or;->A05:I

    .line 99915
    iget-boolean v4, v1, Lcom/facebook/ads/redexgen/X/mw;->A0r:Z

    if-eqz v4, :cond_7

    const-wide/high16 v23, 0x4020000000000000L    # 8.0

    .line 99916
    :goto_7
    move/from16 v21, v11

    .end local v9    # "outputChannelConfig":I
    .local v20, "outputChannelConfig":I
    .end local v10    # "bufferSize":I
    .end local v11    # "outputSampleRate":I
    .local v19, "outputSampleRate":I
    .local v21, "outputPcmFrameSize":I
    move-object/from16 v16, v3

    move/from16 v18, v13

    move/from16 v19, v9

    move/from16 v22, v0

    invoke-interface/range {v16 .. v24}, Lcom/facebook/ads/redexgen/X/8d;->A6x(IIIIIID)I

    move-result v14

    goto :goto_4

    .line 99917
    :cond_7
    const-wide/high16 v23, 0x3ff0000000000000L    # 1.0

    goto :goto_7

    .line 99918
    :cond_8
    const/16 v20, 0x1

    goto :goto_6

    .line 99919
    .end local v0    # "outputChannels":[I
    .end local v6
    .end local v9
    :cond_9
    const/4 v9, 0x2

    sget-object v3, Lcom/facebook/ads/redexgen/X/mw;->A10:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v3, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v0, 0x2

    if-eq v3, v0, :cond_a

    :goto_8
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 99920
    .restart local v0    # "outputChannels":[I
    :cond_a
    sget-object v4, Lcom/facebook/ads/redexgen/X/mw;->A10:[Ljava/lang/String;

    const-string v3, "lAbqtU1Up8pAGeHbeXVy9OX5EzAUCGx9"

    const/4 v0, 0x5

    aput-object v3, v4, v0

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/mw;->A0j:Lcom/facebook/ads/redexgen/X/7p;

    .line 99921
    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/7p;->A09(Lcom/facebook/ads/redexgen/X/or;)Landroid/util/Pair;

    move-result-object v0

    .line 99922
    .local v5, "encodingAndChannelConfig":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v0, :cond_e

    .line 99923
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 99924
    .restart local v6    # "outputEncoding":I
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v12

    sget-object v3, Lcom/facebook/ads/redexgen/X/mw;->A10:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v3, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v0, 0x20

    if-eq v3, v0, :cond_b

    goto :goto_8

    :cond_b
    sget-object v4, Lcom/facebook/ads/redexgen/X/mw;->A10:[Ljava/lang/String;

    const-string v3, "Lw"

    const/4 v0, 0x1

    aput-object v3, v4, v0

    goto/16 :goto_3

    .line 99925
    .end local v2    # "pendingConfiguration":Lcom/facebook/ads/redexgen/X/8f;
    .end local v19    # "outputSampleRate":I
    .end local v20    # "outputChannelConfig":I
    .end local v21    # "outputPcmFrameSize":I
    .end local v22    # "outputEncoding":I
    .restart local v9    # "outputChannelConfig":I
    .local v10, "outputPcmFrameSize":I
    .restart local v11    # "outputSampleRate":I
    .restart local v12    # "outputEncoding":I
    :cond_c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x6b

    const/16 v1, 0x24

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/mw;->A0L(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/8G;

    invoke-direct {v0, v1, v7}, Lcom/facebook/ads/redexgen/X/8G;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/or;)V

    throw v0

    .line 99926
    :cond_d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x8f

    const/16 v1, 0x1e

    const/16 v0, 0x48

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/mw;->A0L(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/8G;

    invoke-direct {v0, v1, v7}, Lcom/facebook/ads/redexgen/X/8G;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/or;)V

    throw v0

    .line 99927
    .end local v9    # "outputChannelConfig":I
    .end local v10    # "outputPcmFrameSize":I
    .end local v11    # "outputSampleRate":I
    .end local v12    # "outputEncoding":I
    .end local v14    # "outputMode":I
    .end local v15    # "inputPcmFrameSize":I
    .end local v16    # "availableAudioProcessors":[Lcom/facebook/ads/redexgen/X/38;
    .local v0, "outputMode":I
    .restart local v3    # "inputPcmFrameSize":I
    .restart local v4    # "availableAudioProcessors":[Lcom/facebook/ads/redexgen/X/38;
    .restart local v5    # "encodingAndChannelConfig":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v7    # "outputPcmFrameSize":I
    .restart local v8    # "outputSampleRate":I
    .restart local p1    # null:Lcom/facebook/ads/redexgen/X/or;
    :cond_e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xcf

    const/16 v1, 0x25

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/mw;->A0L(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/8G;

    invoke-direct {v0, v1, v7}, Lcom/facebook/ads/redexgen/X/8G;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/or;)V

    throw v0
.end method

.method public final A5r()V
    .locals 1

    .line 99928
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0b:Z

    if-eqz v0, :cond_0

    .line 99929
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0b:Z

    .line 99930
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/mw;->flush()V

    .line 99931
    :cond_0
    return-void
.end method

.method public final A6E()V
    .locals 3

    .line 99932
    sget v2, Lcom/facebook/ads/redexgen/X/4a;->A02:I

    const/16 v0, 0x15

    const/4 v1, 0x1

    if-lt v2, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A08(Z)V

    .line 99933
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0T:Z

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A08(Z)V

    .line 99934
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0b:Z

    if-nez v0, :cond_0

    .line 99935
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/mw;->A0b:Z

    .line 99936
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/mw;->flush()V

    .line 99937
    :cond_0
    return-void

    .line 99938
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A6L()V
    .locals 9

    .line 99939
    sget v1, Lcom/facebook/ads/redexgen/X/4a;->A02:I

    const/16 v0, 0x19

    if-ge v1, v0, :cond_0

    .line 99940
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/mw;->flush()V

    .line 99941
    return-void

    .line 99942
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0o:Lcom/facebook/ads/redexgen/X/8k;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8k;->A00()V

    .line 99943
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0n:Lcom/facebook/ads/redexgen/X/8k;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8k;->A00()V

    .line 99944
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/mw;->A0h()Z

    move-result v0

    if-nez v0, :cond_1

    .line 99945
    return-void

    .line 99946
    :cond_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/mw;->A0Q()V

    .line 99947
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0k:Lcom/facebook/ads/redexgen/X/8T;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8T;->A0J()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 99948
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0D:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 99949
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0D:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    .line 99950
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0k:Lcom/facebook/ads/redexgen/X/8T;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8T;->A0E()V

    .line 99951
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/mw;->A0k:Lcom/facebook/ads/redexgen/X/8T;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/mw;->A0D:Landroid/media/AudioTrack;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0K:Lcom/facebook/ads/redexgen/X/8f;

    iget v2, v0, Lcom/facebook/ads/redexgen/X/8f;->A04:I

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne v2, v0, :cond_3

    const/4 v5, 0x1

    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0K:Lcom/facebook/ads/redexgen/X/8f;

    iget v6, v0, Lcom/facebook/ads/redexgen/X/8f;->A03:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0K:Lcom/facebook/ads/redexgen/X/8f;

    iget v7, v0, Lcom/facebook/ads/redexgen/X/8f;->A05:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0K:Lcom/facebook/ads/redexgen/X/8f;

    iget v8, v0, Lcom/facebook/ads/redexgen/X/8f;->A00:I

    invoke-virtual/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/8T;->A0I(Landroid/media/AudioTrack;ZIII)V

    .line 99952
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/mw;->A0Y:Z

    .line 99953
    return-void

    .line 99954
    :cond_3
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public final A7X(Z)J
    .locals 5

    .line 99955
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/mw;->A0h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0Y:Z

    if-eqz v0, :cond_1

    .line 99956
    .end local v0
    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    .line 99957
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0k:Lcom/facebook/ads/redexgen/X/8T;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/8T;->A0D(Z)J

    move-result-wide v3

    .line 99958
    .local v0, "positionUs":J
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/mw;->A0K:Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/mw;->A07()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/8f;->A08(J)J

    move-result-wide v0

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 99959
    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/mw;->A08(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/mw;->A09(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final A8e()Lcom/facebook/ads/redexgen/X/ob;
    .locals 1

    .line 99960
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0r:Z

    if-eqz v0, :cond_0

    .line 99961
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0G:Lcom/facebook/ads/redexgen/X/ob;

    .line 99962
    :goto_0
    return-object v0

    .line 99963
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/mw;->A0I()Lcom/facebook/ads/redexgen/X/ob;

    move-result-object v0

    goto :goto_0
.end method

.method public final A9W(Ljava/nio/ByteBuffer;JI)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/8H;,
            Lcom/facebook/ads/redexgen/X/8M;
        }
    .end annotation

    .line 99964
    move-object v6, p0

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/mw;->A0Q:Ljava/nio/ByteBuffer;

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/mw;->A0Q:Ljava/nio/ByteBuffer;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A07(Z)V

    .line 99965
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/mw;->A0L:Lcom/facebook/ads/redexgen/X/8f;

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    .line 99966
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/mw;->A0f()Z

    move-result v0

    if-nez v0, :cond_2

    .line 99967
    return v4

    .line 99968
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 99969
    :cond_2
    iget-object v1, v6, Lcom/facebook/ads/redexgen/X/mw;->A0L:Lcom/facebook/ads/redexgen/X/8f;

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/mw;->A0K:Lcom/facebook/ads/redexgen/X/8f;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/8f;->A0E(Lcom/facebook/ads/redexgen/X/8f;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 99970
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/mw;->A0P()V

    .line 99971
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/mw;->A9g()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 99972
    return v4

    .line 99973
    :cond_3
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/mw;->flush()V

    goto :goto_1

    .line 99974
    :cond_4
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/mw;->A0L:Lcom/facebook/ads/redexgen/X/8f;

    iput-object v0, v6, Lcom/facebook/ads/redexgen/X/mw;->A0K:Lcom/facebook/ads/redexgen/X/8f;

    .line 99975
    iput-object v2, v6, Lcom/facebook/ads/redexgen/X/mw;->A0L:Lcom/facebook/ads/redexgen/X/8f;

    .line 99976
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/mw;->A0D:Landroid/media/AudioTrack;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/mw;->A0l(Landroid/media/AudioTrack;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, v6, Lcom/facebook/ads/redexgen/X/mw;->A0f:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    .line 99977
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/mw;->A0D:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 99978
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/mw;->A0D:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->setOffloadEndOfStream()V

    .line 99979
    :cond_5
    iget-object v7, v6, Lcom/facebook/ads/redexgen/X/mw;->A0D:Landroid/media/AudioTrack;

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/mw;->A0K:Lcom/facebook/ads/redexgen/X/8f;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/8f;->A07:Lcom/facebook/ads/redexgen/X/or;

    iget v3, v0, Lcom/facebook/ads/redexgen/X/or;->A08:I

    sget-object v8, Lcom/facebook/ads/redexgen/X/mw;->A10:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v8, v0

    const/4 v0, 0x3

    aget-object v8, v8, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1a

    sget-object v8, Lcom/facebook/ads/redexgen/X/mw;->A10:[Ljava/lang/String;

    const-string v1, "jzTmuhmcT6oYK5lhq8C6QOSyUXF7wdwQ"

    const/4 v0, 0x0

    aput-object v1, v8, v0

    const-string v1, "cWMrj79Gd0zdSeVIzQJ8siz7G3nSjdgD"

    const/4 v0, 0x3

    aput-object v1, v8, v0

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/mw;->A0K:Lcom/facebook/ads/redexgen/X/8f;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/8f;->A07:Lcom/facebook/ads/redexgen/X/or;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/or;->A09:I

    invoke-virtual {v7, v3, v0}, Landroid/media/AudioTrack;->setOffloadDelayPadding(II)V

    .line 99980
    iput-boolean v5, v6, Lcom/facebook/ads/redexgen/X/mw;->A0V:Z

    .line 99981
    :cond_6
    :goto_1
    invoke-direct {v6, p2, p3}, Lcom/facebook/ads/redexgen/X/mw;->A0U(J)V

    .line 99982
    :cond_7
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/mw;->A0h()Z

    move-result v0

    if-nez v0, :cond_9

    .line 99983
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/mw;->A0g()Z

    move-result v0

    if-nez v0, :cond_9

    .line 99984
    return v4
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/8H; {:try_start_0 .. :try_end_0} :catch_0

    .line 99985
    :catch_0
    move-exception v1

    .line 99986
    .local v0, "e":Lcom/facebook/ads/redexgen/X/8H;
    iget-boolean v0, v1, Lcom/facebook/ads/redexgen/X/8H;->A02:Z

    if-nez v0, :cond_8

    .line 99987
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/mw;->A0n:Lcom/facebook/ads/redexgen/X/8k;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/8k;->A01(Ljava/lang/Exception;)V

    .line 99988
    return v4

    .line 99989
    :cond_8
    throw v1

    .line 99990
    .end local v0    # "e":Lcom/facebook/ads/redexgen/X/8H;
    :cond_9
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/mw;->A0n:Lcom/facebook/ads/redexgen/X/8k;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8k;->A00()V

    .line 99991
    iget-boolean v3, v6, Lcom/facebook/ads/redexgen/X/mw;->A0Y:Z

    const-wide/16 v0, 0x0

    if-eqz v3, :cond_b

    .line 99992
    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, v6, Lcom/facebook/ads/redexgen/X/mw;->A08:J

    .line 99993
    iput-boolean v4, v6, Lcom/facebook/ads/redexgen/X/mw;->A0Z:Z

    .line 99994
    iput-boolean v4, v6, Lcom/facebook/ads/redexgen/X/mw;->A0Y:Z

    .line 99995
    iget-boolean v0, v6, Lcom/facebook/ads/redexgen/X/mw;->A0r:Z

    if-eqz v0, :cond_a

    sget v1, Lcom/facebook/ads/redexgen/X/4a;->A02:I

    const/16 v0, 0x17

    if-lt v1, v0, :cond_a

    .line 99996
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/mw;->A0G:Lcom/facebook/ads/redexgen/X/ob;

    invoke-direct {v6, v0}, Lcom/facebook/ads/redexgen/X/mw;->A0b(Lcom/facebook/ads/redexgen/X/ob;)V

    .line 99997
    :cond_a
    invoke-direct {v6, p2, p3}, Lcom/facebook/ads/redexgen/X/mw;->A0U(J)V

    .line 99998
    iget-boolean v0, v6, Lcom/facebook/ads/redexgen/X/mw;->A0X:Z

    if-eqz v0, :cond_b

    .line 99999
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/mw;->AGG()V

    .line 100000
    :cond_b
    iget-object v3, v6, Lcom/facebook/ads/redexgen/X/mw;->A0k:Lcom/facebook/ads/redexgen/X/8T;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/mw;->A07()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Lcom/facebook/ads/redexgen/X/8T;->A0N(J)Z

    move-result v0

    if-nez v0, :cond_c

    .line 100001
    return v4

    .line 100002
    :cond_c
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/mw;->A0Q:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_16

    .line 100003
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v0, :cond_d

    const/4 v0, 0x1

    :goto_2
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A07(Z)V

    .line 100004
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_e

    .line 100005
    return v5

    .line 100006
    :cond_d
    const/4 v0, 0x0

    goto :goto_2

    .line 100007
    :cond_e
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/mw;->A0K:Lcom/facebook/ads/redexgen/X/8f;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/8f;->A04:I

    if-eqz v0, :cond_f

    iget v0, v6, Lcom/facebook/ads/redexgen/X/mw;->A04:I

    if-nez v0, :cond_f

    .line 100008
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/mw;->A0K:Lcom/facebook/ads/redexgen/X/8f;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/8f;->A03:I

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/mw;->A02(ILjava/nio/ByteBuffer;)I

    move-result v0

    iput v0, v6, Lcom/facebook/ads/redexgen/X/mw;->A04:I

    .line 100009
    iget v0, v6, Lcom/facebook/ads/redexgen/X/mw;->A04:I

    if-nez v0, :cond_f

    .line 100010
    return v5

    .line 100011
    :cond_f
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/mw;->A0M:Lcom/facebook/ads/redexgen/X/8h;

    if-eqz v0, :cond_11

    .line 100012
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/mw;->A0f()Z

    move-result v0

    if-nez v0, :cond_10

    .line 100013
    return v4

    .line 100014
    :cond_10
    invoke-direct {v6, p2, p3}, Lcom/facebook/ads/redexgen/X/mw;->A0U(J)V

    .line 100015
    iput-object v2, v6, Lcom/facebook/ads/redexgen/X/mw;->A0M:Lcom/facebook/ads/redexgen/X/8h;

    .line 100016
    :cond_11
    iget-wide v2, v6, Lcom/facebook/ads/redexgen/X/mw;->A08:J

    iget-object v9, v6, Lcom/facebook/ads/redexgen/X/mw;->A0K:Lcom/facebook/ads/redexgen/X/8f;

    .line 100017
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/mw;->A06()J

    move-result-wide v0

    iget-object v7, v6, Lcom/facebook/ads/redexgen/X/mw;->A0p:Lcom/facebook/ads/redexgen/X/9I;

    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/9I;->A0C()J

    move-result-wide v7

    sub-long/2addr v0, v7

    .line 100018
    invoke-virtual {v9, v0, v1}, Lcom/facebook/ads/redexgen/X/8f;->A09(J)J

    move-result-wide v0

    add-long/2addr v2, v0

    .line 100019
    .local p0, "expectedPresentationTimeUs":J
    iget-boolean v0, v6, Lcom/facebook/ads/redexgen/X/mw;->A0Z:Z

    if-nez v0, :cond_13

    sub-long v0, v2, p2

    .line 100020
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    const-wide/32 v7, 0x30d40

    cmp-long v0, v9, v7

    if-lez v0, :cond_13

    .line 100021
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/mw;->A0I:Lcom/facebook/ads/redexgen/X/8J;

    if-eqz v0, :cond_12

    .line 100022
    iget-object v1, v6, Lcom/facebook/ads/redexgen/X/mw;->A0I:Lcom/facebook/ads/redexgen/X/8J;

    new-instance v0, Lcom/facebook/ads/redexgen/X/8L;

    invoke-direct {v0, p2, p3, v2, v3}, Lcom/facebook/ads/redexgen/X/8L;-><init>(JJ)V

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/8J;->ACV(Ljava/lang/Exception;)V

    .line 100023
    :cond_12
    iput-boolean v5, v6, Lcom/facebook/ads/redexgen/X/mw;->A0Z:Z

    .line 100024
    :cond_13
    iget-boolean v0, v6, Lcom/facebook/ads/redexgen/X/mw;->A0Z:Z

    if-eqz v0, :cond_15

    .line 100025
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/mw;->A0f()Z

    move-result v0

    if-nez v0, :cond_14

    .line 100026
    return v4

    .line 100027
    :cond_14
    sub-long v7, p2, v2

    .line 100028
    .local p2, "adjustmentUs":J
    iget-wide v0, v6, Lcom/facebook/ads/redexgen/X/mw;->A08:J

    add-long/2addr v0, v7

    iput-wide v0, v6, Lcom/facebook/ads/redexgen/X/mw;->A08:J

    .line 100029
    iput-boolean v4, v6, Lcom/facebook/ads/redexgen/X/mw;->A0Z:Z

    .line 100030
    invoke-direct {v6, p2, p3}, Lcom/facebook/ads/redexgen/X/mw;->A0U(J)V

    .line 100031
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/mw;->A0I:Lcom/facebook/ads/redexgen/X/8J;

    if-eqz v0, :cond_15

    const-wide/16 v1, 0x0

    cmp-long v0, v7, v1

    if-eqz v0, :cond_15

    .line 100032
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/mw;->A0I:Lcom/facebook/ads/redexgen/X/8J;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/8J;->AEh()V

    .line 100033
    .end local p2    # "adjustmentUs":J
    :cond_15
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/mw;->A0K:Lcom/facebook/ads/redexgen/X/8f;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/8f;->A04:I

    if-nez v0, :cond_17

    .line 100034
    iget-wide v2, v6, Lcom/facebook/ads/redexgen/X/mw;->A0A:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v2, v0

    iput-wide v2, v6, Lcom/facebook/ads/redexgen/X/mw;->A0A:J

    .line 100035
    :goto_3
    iput-object p1, v6, Lcom/facebook/ads/redexgen/X/mw;->A0Q:Ljava/nio/ByteBuffer;

    .line 100036
    iput p4, v6, Lcom/facebook/ads/redexgen/X/mw;->A05:I

    .line 100037
    .end local p0    # "expectedPresentationTimeUs":J
    :cond_16
    invoke-direct {v6, p2, p3}, Lcom/facebook/ads/redexgen/X/mw;->A0V(J)V

    .line 100038
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/mw;->A0Q:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_18

    .line 100039
    const/4 v0, 0x0

    iput-object v0, v6, Lcom/facebook/ads/redexgen/X/mw;->A0Q:Ljava/nio/ByteBuffer;

    .line 100040
    const/4 v0, 0x0

    iput v0, v6, Lcom/facebook/ads/redexgen/X/mw;->A05:I

    .line 100041
    const/4 v0, 0x1

    return v0

    .line 100042
    :cond_17
    iget-wide v4, v6, Lcom/facebook/ads/redexgen/X/mw;->A09:J

    iget v0, v6, Lcom/facebook/ads/redexgen/X/mw;->A04:I

    int-to-long v2, v0

    int-to-long v0, p4

    mul-long/2addr v2, v0

    add-long/2addr v4, v2

    iput-wide v4, v6, Lcom/facebook/ads/redexgen/X/mw;->A09:J

    goto :goto_3

    .line 100043
    :cond_18
    iget-object v2, v6, Lcom/facebook/ads/redexgen/X/mw;->A0k:Lcom/facebook/ads/redexgen/X/8T;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/mw;->A07()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/8T;->A0M(J)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 100044
    const/4 v2, 0x7

    const/16 v1, 0x10

    const/16 v0, 0x17

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/mw;->A0L(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xb2

    const/16 v1, 0x1d

    const/4 v0, 0x2

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/mw;->A0L(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/44;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 100045
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/mw;->flush()V

    .line 100046
    const/4 v0, 0x1

    return v0

    .line 100047
    :cond_19
    const/4 v0, 0x0

    return v0

    .line 100048
    :cond_1a
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A9Z()V
    .locals 1

    .line 100049
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0Z:Z

    .line 100050
    return-void
.end method

.method public final A9g()Z
    .locals 3

    .line 100051
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/mw;->A0h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/mw;->A0k:Lcom/facebook/ads/redexgen/X/8T;

    .line 100052
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/mw;->A07()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/8T;->A0L(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 100053
    :goto_0
    return v0

    .line 100054
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final AAG()Z
    .locals 1

    .line 100055
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/mw;->A0h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0U:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/mw;->A9g()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final AGG()V
    .locals 1

    .line 100056
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0X:Z

    .line 100057
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/mw;->A0h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100058
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0k:Lcom/facebook/ads/redexgen/X/8T;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8T;->A0F()V

    .line 100059
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0D:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 100060
    :cond_0
    return-void
.end method

.method public final AGI()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/8M;
        }
    .end annotation

    .line 100061
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0U:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/mw;->A0h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/mw;->A0f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100062
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/mw;->A0P()V

    .line 100063
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0U:Z

    .line 100064
    :cond_0
    return-void
.end method

.method public final AIW(Lcom/facebook/ads/redexgen/X/oy;)V
    .locals 1

    .line 100065
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0E:Lcom/facebook/ads/redexgen/X/oy;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/oy;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100066
    return-void

    .line 100067
    :cond_0
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/mw;->A0E:Lcom/facebook/ads/redexgen/X/oy;

    .line 100068
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0b:Z

    if-eqz v0, :cond_1

    .line 100069
    return-void

    .line 100070
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/mw;->flush()V

    .line 100071
    return-void
.end method

.method public final AIX(I)V
    .locals 1

    .line 100072
    iget v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A01:I

    if-eq v0, p1, :cond_0

    .line 100073
    iput p1, p0, Lcom/facebook/ads/redexgen/X/mw;->A01:I

    .line 100074
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0T:Z

    .line 100075
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/mw;->flush()V

    .line 100076
    :cond_0
    return-void

    .line 100077
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final AIY(Lcom/facebook/ads/redexgen/X/1P;)V
    .locals 6

    .line 100078
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0F:Lcom/facebook/ads/redexgen/X/1P;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/1P;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100079
    return-void

    .line 100080
    :cond_0
    iget v5, p1, Lcom/facebook/ads/redexgen/X/1P;->A01:I

    .line 100081
    .local v0, "effectId":I
    iget v4, p1, Lcom/facebook/ads/redexgen/X/1P;->A00:F

    .line 100082
    .local v1, "sendLevel":F
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0D:Landroid/media/AudioTrack;

    if-eqz v0, :cond_3

    .line 100083
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0F:Lcom/facebook/ads/redexgen/X/1P;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/1P;->A01:I

    if-eq v0, v5, :cond_2

    .line 100084
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/mw;->A0D:Landroid/media/AudioTrack;

    sget-object v1, Lcom/facebook/ads/redexgen/X/mw;->A10:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x20

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/mw;->A10:[Ljava/lang/String;

    const-string v1, "ejzMDVkCKjmiTtIYDMlHFxA2dL6L7Th4"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "3op87oKeQBz5MvPCbX5N1e1cWqib6LOP"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v3, v5}, Landroid/media/AudioTrack;->attachAuxEffect(I)I

    .line 100085
    :cond_2
    if-eqz v5, :cond_3

    .line 100086
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0D:Landroid/media/AudioTrack;

    invoke-virtual {v0, v4}, Landroid/media/AudioTrack;->setAuxEffectSendLevel(F)I

    .line 100087
    :cond_3
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/mw;->A0F:Lcom/facebook/ads/redexgen/X/1P;

    .line 100088
    return-void
.end method

.method public final AIg(Z)V
    .locals 0
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        type = {
            "NEW_METHOD"
        }
        value = "D45157249: Retry Audio Track Init failure with less Audio track allocation sizes"
    .end annotation

    .line 100089
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/mw;->A0S:Z

    .line 100090
    return-void
.end method

.method public final AIl(Lcom/facebook/ads/redexgen/X/8J;)V
    .locals 0

    .line 100091
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/mw;->A0I:Lcom/facebook/ads/redexgen/X/8J;

    .line 100092
    return-void
.end method

.method public final AIt(Lcom/facebook/ads/redexgen/X/ob;)V
    .locals 5

    .line 100093
    nop

    iget v0, p1, Lcom/facebook/ads/redexgen/X/ob;->A01:F

    .line 100094
    const v3, 0x3dcccccd    # 0.1f

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v0, v3, v2}, Lcom/facebook/ads/redexgen/X/4a;->A00(FFF)F

    move-result v1

    iget v0, p1, Lcom/facebook/ads/redexgen/X/ob;->A00:F

    .line 100095
    invoke-static {v0, v3, v2}, Lcom/facebook/ads/redexgen/X/4a;->A00(FFF)F

    move-result v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/ob;

    invoke-direct {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/ob;-><init>(FF)V

    .line 100096
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0r:Z

    if-eqz v0, :cond_0

    sget v4, Lcom/facebook/ads/redexgen/X/4a;->A02:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/mw;->A10:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 100097
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/mw;->A0p()Z

    move-result v0

    .line 100098
    invoke-direct {p0, v3, v0}, Lcom/facebook/ads/redexgen/X/mw;->A0c(Lcom/facebook/ads/redexgen/X/ob;Z)V

    goto :goto_0

    .line 100099
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/mw;->A10:[Ljava/lang/String;

    const-string v1, "mNkMATimN2JlCwGmoqKrFKrIOPJhoNaC"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "5L3Fdp27ixuu2nNAlcGmWXwucnCjA2b5"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const/16 v0, 0x17

    if-lt v4, v0, :cond_0

    .line 100100
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/mw;->A0b(Lcom/facebook/ads/redexgen/X/ob;)V

    .line 100101
    :goto_0
    return-void
.end method

.method public final AIw(Lcom/facebook/ads/redexgen/X/7m;)V
    .locals 0

    .line 100102
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/mw;->A0H:Lcom/facebook/ads/redexgen/X/7m;

    .line 100103
    return-void
.end method

.method public final AIy(Landroid/media/AudioDeviceInfo;)V
    .locals 3

    .line 100104
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0J:Lcom/facebook/ads/redexgen/X/8c;

    sget-object v2, Lcom/facebook/ads/redexgen/X/mw;->A10:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/8c;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/8c;-><init>(Landroid/media/AudioDeviceInfo;)V

    goto :goto_0

    .line 100105
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/mw;->A10:[Ljava/lang/String;

    const-string v1, "fdceU7wc4F7eltehFDuXboaWNHZsjBbo"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "ndF9ePFUZlaV1XmuWN8y5PTJytJgMa2t"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0D:Landroid/media/AudioTrack;

    if-eqz v0, :cond_2

    .line 100106
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/mw;->A0D:Landroid/media/AudioTrack;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0J:Lcom/facebook/ads/redexgen/X/8c;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/8a;->A00(Landroid/media/AudioTrack;Lcom/facebook/ads/redexgen/X/8c;)V

    .line 100107
    :cond_2
    return-void
.end method

.method public final AJ4(Z)V
    .locals 1

    .line 100108
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/mw;->A0I()Lcom/facebook/ads/redexgen/X/ob;

    move-result-object v0

    .line 100109
    invoke-direct {p0, v0, p1}, Lcom/facebook/ads/redexgen/X/mw;->A0c(Lcom/facebook/ads/redexgen/X/ob;Z)V

    .line 100110
    return-void
.end method

.method public final AJc(Lcom/facebook/ads/redexgen/X/or;)Z
    .locals 1

    .line 100111
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/mw;->A0o(Lcom/facebook/ads/redexgen/X/or;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final AJe(II)Z
    .locals 3
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        type = {
            "TEMPORARY"
        }
        value = "Old API that can be removed when we move to MediaCodecRenderer2"
    .end annotation

    .line 100112
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/4a;->A15(I)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 100113
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    sget v1, Lcom/facebook/ads/redexgen/X/4a;->A02:I

    const/16 v0, 0x15

    if-lt v1, v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 100114
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0j:Lcom/facebook/ads/redexgen/X/7p;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0j:Lcom/facebook/ads/redexgen/X/7p;

    .line 100115
    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/7p;->A0A(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0j:Lcom/facebook/ads/redexgen/X/7p;

    .line 100116
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7p;->A08()I

    move-result v0

    if-gt p1, v0, :cond_4

    .line 100117
    :cond_3
    :goto_1
    return v2

    .line 100118
    :cond_4
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public final flush()V
    .locals 5

    .line 100119
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/mw;->A0h()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 100120
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/mw;->A0Q()V

    .line 100121
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0k:Lcom/facebook/ads/redexgen/X/8T;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8T;->A0J()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100122
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0D:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 100123
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0D:Landroid/media/AudioTrack;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/mw;->A0l(Landroid/media/AudioTrack;)Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/mw;->A10:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x6

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/mw;->A10:[Ljava/lang/String;

    const-string v1, "i9Rinuw5ztOihCbMK36CN4CjOXT3DfRT"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz v3, :cond_3

    .line 100124
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/mw;->A0O:Lcom/facebook/ads/redexgen/X/8n;

    sget-object v1, Lcom/facebook/ads/redexgen/X/mw;->A10:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x20

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/mw;->A10:[Ljava/lang/String;

    const-string v1, "H3Tn5qbfAuT8Q6Ln8VWJEFxZf5lTeqqt"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/8n;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0D:Landroid/media/AudioTrack;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/8n;->A01(Landroid/media/AudioTrack;)V

    .line 100125
    :cond_3
    sget v1, Lcom/facebook/ads/redexgen/X/4a;->A02:I

    const/16 v0, 0x15

    if-ge v1, v0, :cond_4

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0T:Z

    if-nez v0, :cond_4

    .line 100126
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A01:I

    .line 100127
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0K:Lcom/facebook/ads/redexgen/X/8f;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8f;->A0B()Lcom/facebook/ads/redexgen/X/8F;

    move-result-object v4

    .line 100128
    .local v0, "oldAudioTrackConfig":Lcom/facebook/ads/redexgen/X/8F;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0L:Lcom/facebook/ads/redexgen/X/8f;

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    .line 100129
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0L:Lcom/facebook/ads/redexgen/X/8f;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0K:Lcom/facebook/ads/redexgen/X/8f;

    .line 100130
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/mw;->A0L:Lcom/facebook/ads/redexgen/X/8f;

    .line 100131
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0k:Lcom/facebook/ads/redexgen/X/8T;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8T;->A0E()V

    .line 100132
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/mw;->A0D:Landroid/media/AudioTrack;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/mw;->A0h:Lcom/facebook/ads/redexgen/X/3W;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0I:Lcom/facebook/ads/redexgen/X/8J;

    invoke-direct {p0, v2, v1, v0, v4}, Lcom/facebook/ads/redexgen/X/mw;->A0Z(Landroid/media/AudioTrack;Lcom/facebook/ads/redexgen/X/3W;Lcom/facebook/ads/redexgen/X/8J;Lcom/facebook/ads/redexgen/X/8F;)V

    .line 100133
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/mw;->A0D:Landroid/media/AudioTrack;

    .line 100134
    .end local v0    # "oldAudioTrackConfig":Lcom/facebook/ads/redexgen/X/8F;
    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0o:Lcom/facebook/ads/redexgen/X/8k;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8k;->A00()V

    .line 100135
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0n:Lcom/facebook/ads/redexgen/X/8k;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8k;->A00()V

    .line 100136
    return-void
.end method

.method public final pause()V
    .locals 1

    .line 100137
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0X:Z

    .line 100138
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/mw;->A0h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0k:Lcom/facebook/ads/redexgen/X/8T;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8T;->A0K()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100139
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A0D:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 100140
    :cond_0
    return-void
.end method

.method public final setVolume(F)V
    .locals 3

    .line 100141
    iget v0, p0, Lcom/facebook/ads/redexgen/X/mw;->A00:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 100142
    iput p1, p0, Lcom/facebook/ads/redexgen/X/mw;->A00:F

    sget-object v2, Lcom/facebook/ads/redexgen/X/mw;->A10:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    .line 100143
    sget-object v2, Lcom/facebook/ads/redexgen/X/mw;->A10:[Ljava/lang/String;

    const-string v1, "E1Te023wTVVNappUuQixsG3bphOCE2I8"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/mw;->A0R()V

    .line 100144
    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
