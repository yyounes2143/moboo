.class public final Lcom/facebook/ads/redexgen/X/Bc;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/gK;


# static fields
.field public static final A00:Lcom/facebook/ads/redexgen/X/Bc;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 621
    new-instance v0, Lcom/facebook/ads/redexgen/X/Bc;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Bc;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Bc;->A00:Lcom/facebook/ads/redexgen/X/Bc;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00()Lcom/facebook/ads/redexgen/X/Bc;
    .locals 1

    .line 31404
    sget-object v0, Lcom/facebook/ads/redexgen/X/Bc;->A00:Lcom/facebook/ads/redexgen/X/Bc;

    return-object v0
.end method


# virtual methods
.method public final AC6()J
    .locals 2

    .line 31405
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method
