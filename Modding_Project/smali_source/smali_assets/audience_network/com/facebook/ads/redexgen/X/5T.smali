.class public final Lcom/facebook/ads/redexgen/X/5T;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/nW;-><init>([Lcom/facebook/ads/redexgen/X/nY;[Lcom/facebook/ads/redexgen/X/nX;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/nW;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/nW;Ljava/lang/String;)V
    .locals 0

    .line 15474
    .local p0, "this":Lcom/facebook/ads/redexgen/X/5T;, "Lcom/facebook/ads/androidx/media3/decoder/SimpleDecoder$1;"
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/5T;->A00:Lcom/facebook/ads/redexgen/X/nW;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Vl;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v1, p0

    .line 15475
    .local v0, "this":Lcom/facebook/ads/redexgen/X/5T;, "Lcom/facebook/ads/androidx/media3/decoder/SimpleDecoder$1;"
    :try_start_0
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/5T;->A00:Lcom/facebook/ads/redexgen/X/nW;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/nW;->A0V(Lcom/facebook/ads/redexgen/X/nW;)V

    .line 15476
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/5T;, "Lcom/facebook/ads/androidx/media3/decoder/SimpleDecoder$1;"
    :catchall_0
    move-exception v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Vl;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
