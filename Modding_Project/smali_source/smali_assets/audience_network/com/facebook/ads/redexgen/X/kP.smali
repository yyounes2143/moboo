.class public final Lcom/facebook/ads/redexgen/X/kP;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Iw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Iz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnseekableOggSeeker"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 92124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/Ix;)V
    .locals 0

    .line 92125
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/kP;-><init>()V

    return-void
.end method


# virtual methods
.method public final A5R()Lcom/facebook/ads/redexgen/X/Gw;
    .locals 3

    .line 92126
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    new-instance v0, Lcom/facebook/ads/redexgen/X/lI;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/lI;-><init>(J)V

    return-object v0
.end method

.method public final AGd(Lcom/facebook/ads/redexgen/X/lN;)J
    .locals 2

    .line 92127
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final AJR(J)V
    .locals 0

    .line 92128
    return-void
.end method
