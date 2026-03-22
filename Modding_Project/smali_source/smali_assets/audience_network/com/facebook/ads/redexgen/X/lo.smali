.class public final Lcom/facebook/ads/redexgen/X/lo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/1S;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/92;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SelectionOverride"
.end annotation


# static fields
.field public static A04:[Ljava/lang/String;

.field public static final A05:Lcom/facebook/ads/redexgen/X/1R;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/1R<",
            "Lcom/facebook/ads/redexgen/X/lo;",
            ">;"
        }
    .end annotation
.end field

.field public static final A06:Ljava/lang/String;

.field public static final A07:Ljava/lang/String;

.field public static final A08:Ljava/lang/String;


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:I

.field public final A03:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3133
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "0EeRaofkOnG82pPuB"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "jcjJv"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "T4n"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "y6LXg9kPowsRJwalOEx6K"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "cypgHvauDeb"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "sGCac32Lryl6ta5A9qPel0ZSNDpSTc"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "mAWrtqCYM7sM8yItQ0fM"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "xdW2EE8FfL1ekapcbmlM6yOkR5Ux1S1"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/lo;->A04:[Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/lo;->A06:Ljava/lang/String;

    .line 3134
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/lo;->A07:Ljava/lang/String;

    .line 3135
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/lo;->A08:Ljava/lang/String;

    .line 3136
    new-instance v0, Lcom/facebook/ads/redexgen/X/lp;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/lp;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/lo;->A05:Lcom/facebook/ads/redexgen/X/1R;

    return-void
.end method

.method public constructor <init>(I[II)V
    .locals 1

    .line 97302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97303
    iput p1, p0, Lcom/facebook/ads/redexgen/X/lo;->A00:I

    .line 97304
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lo;->A03:[I

    .line 97305
    array-length v0, p2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/lo;->A01:I

    .line 97306
    iput p3, p0, Lcom/facebook/ads/redexgen/X/lo;->A02:I

    .line 97307
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lo;->A03:[I

    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    .line 97308
    return-void
.end method

.method public static synthetic A00(Landroid/os/Bundle;)Lcom/facebook/ads/redexgen/X/lo;
    .locals 4

    .line 97309
    sget-object v0, Lcom/facebook/ads/redexgen/X/lo;->A06:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 97310
    .local v0, "groupIndex":I
    sget-object v0, Lcom/facebook/ads/redexgen/X/lo;->A07:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    .line 97311
    .local v2, "tracks":[I
    sget-object v0, Lcom/facebook/ads/redexgen/X/lo;->A08:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 97312
    .local v1, "trackType":I
    if-ltz v3, :cond_0

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A07(Z)V

    .line 97313
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97314
    new-instance v0, Lcom/facebook/ads/redexgen/X/lo;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/lo;-><init>(I[II)V

    return-object v0

    .line 97315
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    .line 97316
    const/4 v4, 0x1

    if-ne p0, p1, :cond_0

    .line 97317
    return v4

    .line 97318
    :cond_0
    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/lo;->A04:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/lo;->A04:[Ljava/lang/String;

    const-string v1, "RoyHwRFBbL3TyB1YuYs"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v1, v0, :cond_2

    .line 97319
    .end local v2
    :cond_1
    return v3

    .line 97320
    :cond_2
    check-cast p1, Lcom/facebook/ads/redexgen/X/lo;

    .line 97321
    .local v2, "other":Lcom/facebook/ads/redexgen/X/lo;
    iget v1, p0, Lcom/facebook/ads/redexgen/X/lo;->A00:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/lo;->A00:I

    if-ne v1, v0, :cond_3

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/lo;->A03:[I

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/lo;->A03:[I

    .line 97322
    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v1, p0, Lcom/facebook/ads/redexgen/X/lo;->A02:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/lo;->A02:I

    if-ne v1, v0, :cond_3

    .line 97323
    :goto_0
    return v4

    .line 97324
    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final hashCode()I
    .locals 2

    .line 97325
    iget v0, p0, Lcom/facebook/ads/redexgen/X/lo;->A00:I

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lo;->A03:[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    add-int/2addr v1, v0

    .line 97326
    .local v0, "hash":I
    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/facebook/ads/redexgen/X/lo;->A02:I

    add-int/2addr v1, v0

    return v1
.end method
