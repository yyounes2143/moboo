.class public final Lcom/facebook/ads/redexgen/X/Ty;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Vm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FetchLocation"
.end annotation


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:Lcom/facebook/ads/redexgen/X/Tm;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Tm;II)V
    .locals 0

    .line 66558
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66559
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ty;->A02:Lcom/facebook/ads/redexgen/X/Tm;

    .line 66560
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Ty;->A01:I

    .line 66561
    iput p3, p0, Lcom/facebook/ads/redexgen/X/Ty;->A00:I

    .line 66562
    return-void
.end method
