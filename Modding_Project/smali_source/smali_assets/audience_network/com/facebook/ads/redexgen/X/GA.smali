.class public final Lcom/facebook/ads/redexgen/X/GA;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/GB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Config"
.end annotation


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 37051
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37052
    iput p1, p0, Lcom/facebook/ads/redexgen/X/GA;->A01:I

    .line 37053
    iput p2, p0, Lcom/facebook/ads/redexgen/X/GA;->A00:I

    .line 37054
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/GA;->A02:Ljava/lang/String;

    .line 37055
    return-void
.end method

.method public synthetic constructor <init>(IILjava/lang/String;Lcom/facebook/ads/redexgen/X/G8;)V
    .locals 0

    .line 37056
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/GA;-><init>(IILjava/lang/String;)V

    return-void
.end method
