.class public final Lcom/facebook/ads/redexgen/X/OC;
.super Lcom/facebook/ads/redexgen/X/QT;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/0h;->getOnScrollListener()Lcom/facebook/ads/redexgen/X/QT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/0h;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1440
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "LeWmJ2AEMrGR8tgfwsG9m8UwM76zwmUz"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "6Bm"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "ck2sw"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Oj1Ntvfg6dck0NxJmQASjzaKZXVqT4Sf"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "CtYf7ZmPdO"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "plI1JnuA"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "RZR4g54lk6KTwqItkRA6ECctcTUw"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "cGd5igXf7vOVCpmuGQi5cRxrBgQCM2pW"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/OC;->A01:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/0h;)V
    .locals 0

    .line 55132
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/OC;->A00:Lcom/facebook/ads/redexgen/X/0h;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/QT;-><init>()V

    return-void
.end method


# virtual methods
.method public final A0L(Lcom/facebook/ads/redexgen/X/6g;I)V
    .locals 5

    .line 55133
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/QT;->A0L(Lcom/facebook/ads/redexgen/X/6g;I)V

    .line 55134
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OC;->A00:Lcom/facebook/ads/redexgen/X/0h;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/0h;->getLayoutManager()Lcom/facebook/ads/redexgen/X/gI;

    move-result-object v0

    .line 55135
    .local v0, "linearLayoutManager":Lcom/facebook/ads/redexgen/X/gI;
    if-nez v0, :cond_0

    .line 55136
    return-void

    .line 55137
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gI;->A25()I

    move-result v3

    .line 55138
    .local v1, "scrollPosition":I
    if-ltz v3, :cond_1

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/OC;->A00:Lcom/facebook/ads/redexgen/X/0h;

    sget-object v1, Lcom/facebook/ads/redexgen/X/OC;->A01:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x30

    if-eq v1, v0, :cond_4

    .line 55139
    sget-object v2, Lcom/facebook/ads/redexgen/X/OC;->A01:[Ljava/lang/String;

    const-string v1, "JmqJ93Os7fwoNBdh"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/6g;->getAdapter()Lcom/facebook/ads/redexgen/X/QC;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OC;->A00:Lcom/facebook/ads/redexgen/X/0h;

    .line 55140
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6g;->getAdapter()Lcom/facebook/ads/redexgen/X/QC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QC;->A0B()I

    move-result v0

    if-lt v3, v0, :cond_2

    .line 55141
    .end local v2
    :cond_1
    return-void

    .line 55142
    :cond_2
    invoke-virtual {p1, v3}, Lcom/facebook/ads/redexgen/X/6g;->A1F(I)Lcom/facebook/ads/redexgen/X/Qg;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Xu;

    .line 55143
    .local v2, "setAdToolBarClickListener":Lcom/facebook/ads/redexgen/X/Xu;
    if-nez v0, :cond_3

    .line 55144
    return-void

    .line 55145
    :cond_3
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Xu;->AIV()V

    .line 55146
    return-void

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
