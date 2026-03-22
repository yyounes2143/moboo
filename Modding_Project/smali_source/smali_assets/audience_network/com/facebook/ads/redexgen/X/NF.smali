.class public final Lcom/facebook/ads/redexgen/X/NF;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/NE;
    }
.end annotation


# static fields
.field public static final serialVersionUID:J = 0x2aL


# instance fields
.field public final A00:Ljava/lang/String;

.field public final A01:Ljava/lang/String;

.field public final A02:Ljava/lang/String;

.field public final A03:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/NE;)V
    .locals 1

    .line 53681
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53682
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/NE;->A00(Lcom/facebook/ads/redexgen/X/NE;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/NF;->A02:Ljava/lang/String;

    .line 53683
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/NE;->A01(Lcom/facebook/ads/redexgen/X/NE;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/NF;->A03:Ljava/lang/String;

    .line 53684
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/NE;->A02(Lcom/facebook/ads/redexgen/X/NE;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/NF;->A01:Ljava/lang/String;

    .line 53685
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/NE;->A03(Lcom/facebook/ads/redexgen/X/NE;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/NF;->A00:Ljava/lang/String;

    .line 53686
    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/NE;Lcom/facebook/ads/redexgen/X/ND;)V
    .locals 0

    .line 53687
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/NF;-><init>(Lcom/facebook/ads/redexgen/X/NE;)V

    return-void
.end method


# virtual methods
.method public final A00()Ljava/lang/String;
    .locals 1

    .line 53688
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NF;->A00:Ljava/lang/String;

    return-object v0
.end method

.method public final A01()Ljava/lang/String;
    .locals 1

    .line 53689
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NF;->A01:Ljava/lang/String;

    return-object v0
.end method

.method public final A02()Ljava/lang/String;
    .locals 1

    .line 53690
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NF;->A02:Ljava/lang/String;

    return-object v0
.end method
