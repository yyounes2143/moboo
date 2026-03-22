.class public abstract Lcom/facebook/ads/redexgen/X/Pd;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Pc;,
        Lcom/facebook/ads/redexgen/X/gN;
    }
.end annotation


# static fields
.field public static final A00:Lcom/facebook/ads/redexgen/X/Pc;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1505
    new-instance v0, Lcom/facebook/ads/redexgen/X/gN;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/gN;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Pd;->A00:Lcom/facebook/ads/redexgen/X/Pc;

    .line 1506
    return-void
.end method

.method public static A00(Landroid/widget/EdgeEffect;FF)V
    .locals 1

    .line 58339
    sget-object v0, Lcom/facebook/ads/redexgen/X/Pd;->A00:Lcom/facebook/ads/redexgen/X/Pc;

    invoke-virtual {v0, p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Pc;->A00(Landroid/widget/EdgeEffect;FF)V

    .line 58340
    return-void
.end method
