.class public final Lcom/facebook/ads/redexgen/X/Aa;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/14;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OutputStreamInfo"
.end annotation


# static fields
.field public static final A04:Lcom/facebook/ads/redexgen/X/Aa;


# instance fields
.field public final A00:J

.field public final A01:J

.field public final A02:J

.field public final A03:Lcom/facebook/ads/redexgen/X/4Q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/4Q<",
            "Lcom/facebook/ads/redexgen/X/or;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 599
    new-instance v0, Lcom/facebook/ads/redexgen/X/Aa;

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/Aa;-><init>(JJJ)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Aa;->A04:Lcom/facebook/ads/redexgen/X/Aa;

    return-void
.end method

.method public constructor <init>(JJJ)V
    .locals 1

    .line 29727
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29728
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/Aa;->A00:J

    .line 29729
    iput-wide p3, p0, Lcom/facebook/ads/redexgen/X/Aa;->A01:J

    .line 29730
    iput-wide p5, p0, Lcom/facebook/ads/redexgen/X/Aa;->A02:J

    .line 29731
    new-instance v0, Lcom/facebook/ads/redexgen/X/4Q;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/4Q;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Aa;->A03:Lcom/facebook/ads/redexgen/X/4Q;

    .line 29732
    return-void
.end method
