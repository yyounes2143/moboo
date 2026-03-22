.class public final Lcom/facebook/ads/redexgen/X/Ec;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Ed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LoadErrorInfo"
.end annotation


# instance fields
.field public final A00:I

.field public final A01:Lcom/facebook/ads/redexgen/X/CE;

.field public final A02:Lcom/facebook/ads/redexgen/X/CG;

.field public final A03:Ljava/io/IOException;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/CE;Lcom/facebook/ads/redexgen/X/CG;Ljava/io/IOException;I)V
    .locals 0

    .line 35010
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35011
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ec;->A01:Lcom/facebook/ads/redexgen/X/CE;

    .line 35012
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Ec;->A02:Lcom/facebook/ads/redexgen/X/CG;

    .line 35013
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Ec;->A03:Ljava/io/IOException;

    .line 35014
    iput p4, p0, Lcom/facebook/ads/redexgen/X/Ec;->A00:I

    .line 35015
    return-void
.end method
