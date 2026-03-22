.class public final Lcom/facebook/ads/redexgen/X/cC;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/4Z;->setUpBrowserControls(Lcom/facebook/ads/redexgen/X/LJ;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/4Z;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2562
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "gOpLt4x0eEJeQNNuJ46yxDU2qUJdqYEL"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "PZOrqZevLxuD31hIKj0gHyYQ4Dcgh"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "igMzK0YYgnV8ISg3WYQba3hiJQ"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "r1F"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "hmhkt"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "BWRo0uQSzThSh5wdl5bQ5g6bgNQDxstJ"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "eE2oRBOJxbFK8ZaewsAA6sP9tyWNw24H"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "pn2BkqsWP7aYSksb5nO6IYLmlyBMEu5T"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/cC;->A01:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/4Z;)V
    .locals 0

    .line 77810
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/cC;->A00:Lcom/facebook/ads/redexgen/X/4Z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 77811
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 77812
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 77813
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 77814
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 77815
    .local v1, "browserFinalY":F
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cC;->A00:Lcom/facebook/ads/redexgen/X/4Z;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4Z;->A00(Lcom/facebook/ads/redexgen/X/4Z;)F

    move-result v0

    cmpg-float v3, v0, v1

    sget-object v2, Lcom/facebook/ads/redexgen/X/cC;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/cC;->A01:[Ljava/lang/String;

    const-string v1, "FGPeZwV3hST1IH5pUqKb6TkoTjuvG"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "XZOwAM4xH67XqTDn0ifpo8neSL"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-gez v3, :cond_0

    .line 77816
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/cC;->A00:Lcom/facebook/ads/redexgen/X/4Z;

    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/cC;->A01:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x68

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/cC;->A01:[Ljava/lang/String;

    const-string v1, "lWtjS"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-static {v4, v3}, Lcom/facebook/ads/redexgen/X/4Z;->A0e(Lcom/facebook/ads/redexgen/X/4Z;Z)V

    goto :goto_0

    .line 77817
    .end local v1    # "browserFinalY":F
    :pswitch_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cC;->A00:Lcom/facebook/ads/redexgen/X/4Z;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/4Z;->A02(Lcom/facebook/ads/redexgen/X/4Z;F)F

    .line 77818
    goto :goto_0

    .line 77819
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
