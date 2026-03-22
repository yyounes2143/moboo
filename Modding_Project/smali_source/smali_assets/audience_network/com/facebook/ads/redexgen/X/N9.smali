.class public final Lcom/facebook/ads/redexgen/X/N9;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/N8;
    }
.end annotation


# static fields
.field public static final serialVersionUID:J = 0x4e149b77709aff0L


# instance fields
.field public final A00:Ljava/lang/String;

.field public final A01:Ljava/lang/String;

.field public final A02:Ljava/lang/String;

.field public final A03:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/N8;)V
    .locals 1

    .line 53518
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53519
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/N8;->A00(Lcom/facebook/ads/redexgen/X/N8;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/N9;->A02:Ljava/lang/String;

    .line 53520
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/N8;->A01(Lcom/facebook/ads/redexgen/X/N8;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/N9;->A01:Ljava/lang/String;

    .line 53521
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/N8;->A02(Lcom/facebook/ads/redexgen/X/N8;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/N9;->A00:Ljava/lang/String;

    .line 53522
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/N8;->A03(Lcom/facebook/ads/redexgen/X/N8;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/N9;->A03:Ljava/lang/String;

    .line 53523
    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/N8;Lcom/facebook/ads/redexgen/X/N7;)V
    .locals 0

    .line 53524
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/N9;-><init>(Lcom/facebook/ads/redexgen/X/N8;)V

    return-void
.end method


# virtual methods
.method public final A00()Ljava/lang/String;
    .locals 1

    .line 53525
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/N9;->A00:Ljava/lang/String;

    return-object v0
.end method

.method public final A01()Ljava/lang/String;
    .locals 1

    .line 53526
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/N9;->A01:Ljava/lang/String;

    return-object v0
.end method

.method public final A02()Ljava/lang/String;
    .locals 1

    .line 53527
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/N9;->A02:Ljava/lang/String;

    return-object v0
.end method

.method public final A03()Ljava/lang/String;
    .locals 1

    .line 53528
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/N9;->A03:Ljava/lang/String;

    return-object v0
.end method
