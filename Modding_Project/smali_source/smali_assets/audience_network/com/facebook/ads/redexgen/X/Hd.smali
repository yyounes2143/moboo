.class public final Lcom/facebook/ads/redexgen/X/Hd;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/8i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Id3Header"
.end annotation


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:Z


# direct methods
.method public constructor <init>(IZI)V
    .locals 0

    .line 39455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39456
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Hd;->A01:I

    .line 39457
    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/Hd;->A02:Z

    .line 39458
    iput p3, p0, Lcom/facebook/ads/redexgen/X/Hd;->A00:I

    .line 39459
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Hd;)I
    .locals 0

    .line 39460
    iget p0, p0, Lcom/facebook/ads/redexgen/X/Hd;->A01:I

    return p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Hd;)I
    .locals 0

    .line 39461
    iget p0, p0, Lcom/facebook/ads/redexgen/X/Hd;->A00:I

    return p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Hd;)Z
    .locals 0

    .line 39462
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/Hd;->A02:Z

    return p0
.end method
