.class public Lcom/facebook/ads/redexgen/X/E1;
.super Landroid/widget/RelativeLayout;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/eV;
.implements Lcom/facebook/ads/redexgen/X/dQ;


# static fields
.field public static A0F:[B

.field public static A0G:[Ljava/lang/String;

.field public static final A0H:Lcom/facebook/ads/redexgen/X/DW;

.field public static final A0I:Lcom/facebook/ads/redexgen/X/DQ;

.field public static final A0J:Lcom/facebook/ads/redexgen/X/DO;

.field public static final A0K:Lcom/facebook/ads/redexgen/X/DJ;

.field public static final A0L:Lcom/facebook/ads/redexgen/X/DI;

.field public static final A0M:Lcom/facebook/ads/redexgen/X/DF;

.field public static final A0N:Lcom/facebook/ads/redexgen/X/DD;

.field public static final A0O:Lcom/facebook/ads/redexgen/X/DC;


# instance fields
.field public A00:F

.field public A01:I

.field public A02:Lcom/facebook/ads/redexgen/X/Ua;

.field public A03:Lcom/facebook/ads/redexgen/X/dY;

.field public A04:Z

.field public A05:Z

.field public A06:Z

.field public A07:Z

.field public final A08:Landroid/os/Handler;

.field public final A09:Landroid/os/Handler;

.field public final A0A:Landroid/view/View$OnTouchListener;

.field public final A0B:Lcom/facebook/ads/redexgen/X/dL;

.field public final A0C:Lcom/facebook/ads/redexgen/X/Te;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/Te<",
            "Lcom/facebook/ads/redexgen/X/Tf;",
            "Lcom/facebook/ads/redexgen/X/Td;",
            ">;"
        }
    .end annotation
.end field

.field public final A0D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/dc;",
            ">;"
        }
    .end annotation
.end field

.field public final A0E:Lcom/facebook/ads/redexgen/X/eS;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 656
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "3L6CoO6YtrcW"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "MjcsiBOYcGfrGyZBxeZgAjKXsDYhFJK"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "NbVxNqWnj3"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Ob7MM92eIAC3XgmL"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "XSQst8sM3v9Waw60ED5t21eOsn1IQUtw"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "wvdS5a619fbySZdqvbmzcB7w"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "WLvo7626w9dzVwCTBg7InBeeg1a7HKE3"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "kYDrs41aRZaYTR0SA8npQuCfjZz7Tio6"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/E1;->A0G:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/E1;->A0J()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/DO;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/DO;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/E1;->A0J:Lcom/facebook/ads/redexgen/X/DO;

    .line 657
    new-instance v0, Lcom/facebook/ads/redexgen/X/DW;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/DW;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/E1;->A0H:Lcom/facebook/ads/redexgen/X/DW;

    .line 658
    new-instance v0, Lcom/facebook/ads/redexgen/X/DJ;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/DJ;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/E1;->A0K:Lcom/facebook/ads/redexgen/X/DJ;

    .line 659
    new-instance v0, Lcom/facebook/ads/redexgen/X/DI;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/DI;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/E1;->A0L:Lcom/facebook/ads/redexgen/X/DI;

    .line 660
    new-instance v0, Lcom/facebook/ads/redexgen/X/DQ;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/DQ;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/E1;->A0I:Lcom/facebook/ads/redexgen/X/DQ;

    .line 661
    new-instance v0, Lcom/facebook/ads/redexgen/X/DF;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/DF;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/E1;->A0M:Lcom/facebook/ads/redexgen/X/DF;

    .line 662
    new-instance v0, Lcom/facebook/ads/redexgen/X/DC;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/DC;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/E1;->A0O:Lcom/facebook/ads/redexgen/X/DC;

    .line 663
    new-instance v0, Lcom/facebook/ads/redexgen/X/DD;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/DD;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/E1;->A0N:Lcom/facebook/ads/redexgen/X/DD;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;)V
    .locals 1

    .line 34233
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 34234
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/E1;->A0D:Ljava/util/List;

    .line 34235
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/E1;->A08:Landroid/os/Handler;

    .line 34236
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/E1;->A09:Landroid/os/Handler;

    .line 34237
    new-instance v0, Lcom/facebook/ads/redexgen/X/Te;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Te;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/E1;->A0C:Lcom/facebook/ads/redexgen/X/Te;

    .line 34238
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/E1;->A06:Z

    .line 34239
    const/16 v0, 0xc8

    iput v0, p0, Lcom/facebook/ads/redexgen/X/E1;->A01:I

    .line 34240
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/E1;->A00:F

    .line 34241
    new-instance v0, Lcom/facebook/ads/redexgen/X/dP;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/dP;-><init>(Lcom/facebook/ads/redexgen/X/E1;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/E1;->A0A:Landroid/view/View$OnTouchListener;

    .line 34242
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/E1;->A0B:Lcom/facebook/ads/redexgen/X/dL;

    .line 34243
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/E1;->A0W(Lcom/facebook/ads/redexgen/X/dL;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34244
    new-instance v0, Lcom/facebook/ads/redexgen/X/CM;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/CM;-><init>(Lcom/facebook/ads/redexgen/X/dL;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/E1;->A0E:Lcom/facebook/ads/redexgen/X/eS;

    .line 34245
    :goto_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/E1;->A0H()V

    .line 34246
    return-void

    .line 34247
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/CJ;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/CJ;-><init>(Lcom/facebook/ads/redexgen/X/dL;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/E1;->A0E:Lcom/facebook/ads/redexgen/X/eS;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;Landroid/util/AttributeSet;)V
    .locals 1

    .line 34248
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34249
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/E1;->A0D:Ljava/util/List;

    .line 34250
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/E1;->A08:Landroid/os/Handler;

    .line 34251
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/E1;->A09:Landroid/os/Handler;

    .line 34252
    new-instance v0, Lcom/facebook/ads/redexgen/X/Te;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Te;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/E1;->A0C:Lcom/facebook/ads/redexgen/X/Te;

    .line 34253
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/E1;->A06:Z

    .line 34254
    const/16 v0, 0xc8

    iput v0, p0, Lcom/facebook/ads/redexgen/X/E1;->A01:I

    .line 34255
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/E1;->A00:F

    .line 34256
    new-instance v0, Lcom/facebook/ads/redexgen/X/dP;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/dP;-><init>(Lcom/facebook/ads/redexgen/X/E1;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/E1;->A0A:Landroid/view/View$OnTouchListener;

    .line 34257
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/E1;->A0B:Lcom/facebook/ads/redexgen/X/dL;

    .line 34258
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/E1;->A0W(Lcom/facebook/ads/redexgen/X/dL;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34259
    new-instance v0, Lcom/facebook/ads/redexgen/X/CM;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/CM;-><init>(Lcom/facebook/ads/redexgen/X/dL;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/E1;->A0E:Lcom/facebook/ads/redexgen/X/eS;

    .line 34260
    :goto_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/E1;->A0H()V

    .line 34261
    return-void

    .line 34262
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/CJ;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/CJ;-><init>(Lcom/facebook/ads/redexgen/X/dL;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/E1;->A0E:Lcom/facebook/ads/redexgen/X/eS;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 34263
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34264
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/E1;->A0D:Ljava/util/List;

    .line 34265
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/E1;->A08:Landroid/os/Handler;

    .line 34266
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/E1;->A09:Landroid/os/Handler;

    .line 34267
    new-instance v0, Lcom/facebook/ads/redexgen/X/Te;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Te;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/E1;->A0C:Lcom/facebook/ads/redexgen/X/Te;

    .line 34268
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/E1;->A06:Z

    .line 34269
    const/16 v0, 0xc8

    iput v0, p0, Lcom/facebook/ads/redexgen/X/E1;->A01:I

    .line 34270
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/E1;->A00:F

    .line 34271
    new-instance v0, Lcom/facebook/ads/redexgen/X/dP;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/dP;-><init>(Lcom/facebook/ads/redexgen/X/E1;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/E1;->A0A:Landroid/view/View$OnTouchListener;

    .line 34272
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/E1;->A0B:Lcom/facebook/ads/redexgen/X/dL;

    .line 34273
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/E1;->A0W(Lcom/facebook/ads/redexgen/X/dL;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34274
    new-instance v0, Lcom/facebook/ads/redexgen/X/CM;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/CM;-><init>(Lcom/facebook/ads/redexgen/X/dL;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/E1;->A0E:Lcom/facebook/ads/redexgen/X/eS;

    .line 34275
    :goto_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/E1;->A0H()V

    .line 34276
    return-void

    .line 34277
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/CJ;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/CJ;-><init>(Lcom/facebook/ads/redexgen/X/dL;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/E1;->A0E:Lcom/facebook/ads/redexgen/X/eS;

    goto :goto_0
.end method

.method private A06(Lcom/facebook/ads/redexgen/X/eS;)F
    .locals 3

    .line 34278
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/eS;->getVideoHeight()I

    move-result v2

    .line 34279
    .local v0, "height":I
    if-nez v2, :cond_0

    .line 34280
    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    .line 34281
    :cond_0
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/eS;->getVideoWidth()I

    move-result v0

    .line 34282
    .local v1, "width":I
    int-to-float v1, v0

    int-to-float v0, v2

    div-float/2addr v1, v0

    return v1
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/E1;)I
    .locals 0

    .line 34283
    iget p0, p0, Lcom/facebook/ads/redexgen/X/E1;->A01:I

    return p0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/E1;)Landroid/os/Handler;
    .locals 0

    .line 34284
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/E1;->A08:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/E1;)Lcom/facebook/ads/redexgen/X/dL;
    .locals 0

    .line 34285
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/E1;->A0B:Lcom/facebook/ads/redexgen/X/dL;

    return-object p0
.end method

.method public static synthetic A0A(Lcom/facebook/ads/redexgen/X/E1;)Lcom/facebook/ads/redexgen/X/Te;
    .locals 0

    .line 34286
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/E1;->A0C:Lcom/facebook/ads/redexgen/X/Te;

    return-object p0
.end method

.method public static synthetic A0B()Lcom/facebook/ads/redexgen/X/DW;
    .locals 1

    .line 34287
    sget-object v0, Lcom/facebook/ads/redexgen/X/E1;->A0H:Lcom/facebook/ads/redexgen/X/DW;

    return-object v0
.end method

.method public static synthetic A0C()Lcom/facebook/ads/redexgen/X/DQ;
    .locals 1

    .line 34288
    sget-object v0, Lcom/facebook/ads/redexgen/X/E1;->A0I:Lcom/facebook/ads/redexgen/X/DQ;

    return-object v0
.end method

.method public static synthetic A0D()Lcom/facebook/ads/redexgen/X/DO;
    .locals 1

    .line 34289
    sget-object v0, Lcom/facebook/ads/redexgen/X/E1;->A0J:Lcom/facebook/ads/redexgen/X/DO;

    return-object v0
.end method

.method public static synthetic A0E()Lcom/facebook/ads/redexgen/X/DJ;
    .locals 4

    .line 34290
    sget-object v3, Lcom/facebook/ads/redexgen/X/E1;->A0K:Lcom/facebook/ads/redexgen/X/DJ;

    sget-object v1, Lcom/facebook/ads/redexgen/X/E1;->A0G:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x34

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/E1;->A0G:[Ljava/lang/String;

    const-string v1, "Ykw7x5qbt5Y8x48JghoZKWeO"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "cKnPTPxPmv7r"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return-object v3

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static synthetic A0F()Lcom/facebook/ads/redexgen/X/DI;
    .locals 1

    .line 34291
    sget-object v0, Lcom/facebook/ads/redexgen/X/E1;->A0L:Lcom/facebook/ads/redexgen/X/DI;

    return-object v0
.end method

.method public static A0G(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/E1;->A0F:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/E1;->A0G:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/E1;->A0G:[Ljava/lang/String;

    const-string v1, "HxnswxUpcuHv1wuLD4berTHtADZcXTin"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "I3xDTi7RY5fAtwEllKfD6KKH3DCBcY9z"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_0

    aget-byte v0, v3, p0

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x39

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0H()V
    .locals 3

    .line 34292
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/E1;->A0B:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A0t(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/E1;->A07:Z

    .line 34293
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/E1;->A0B:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LH;->A3V()V

    .line 34294
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/E1;->A0E:Lcom/facebook/ads/redexgen/X/eS;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/eS;->setRequestedVolume(F)V

    .line 34295
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/E1;->A0E:Lcom/facebook/ads/redexgen/X/eS;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/eS;->setVideoStateChangeListener(Lcom/facebook/ads/redexgen/X/eV;)V

    .line 34296
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/E1;->A0B:Lcom/facebook/ads/redexgen/X/dL;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/E1;->A0E:Lcom/facebook/ads/redexgen/X/eS;

    new-instance v0, Lcom/facebook/ads/redexgen/X/dY;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/dY;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/eS;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/E1;->A03:Lcom/facebook/ads/redexgen/X/dY;

    .line 34297
    const/4 v0, -0x1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 34298
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 34299
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/E1;->A03:Lcom/facebook/ads/redexgen/X/dY;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0I(Landroid/view/View;)V

    .line 34300
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/E1;->A03:Lcom/facebook/ads/redexgen/X/dY;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/E1;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 34301
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/E1;->A0A:Landroid/view/View$OnTouchListener;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/E1;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 34302
    return-void
.end method

.method private A0I()V
    .locals 4

    .line 34303
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/E1;->A08:Landroid/os/Handler;

    new-instance v2, Lcom/facebook/ads/redexgen/X/EF;

    invoke-direct {v2, p0}, Lcom/facebook/ads/redexgen/X/EF;-><init>(Lcom/facebook/ads/redexgen/X/E1;)V

    iget v0, p0, Lcom/facebook/ads/redexgen/X/E1;->A01:I

    int-to-long v0, v0

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 34304
    return-void
.end method

.method public static A0J()V
    .locals 1

    const/16 v0, 0x22

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/E1;->A0F:[B

    return-void

    :array_0
    .array-data 1
        0x5dt
        -0x50t
        -0x5et
        -0x60t
        0x5dt
        -0x4ft
        -0x54t
        -0x4ft
        -0x62t
        -0x57t
        0x5dt
        -0x4ct
        -0x62t
        -0x4ft
        -0x60t
        -0x5bt
        0x5dt
        -0x4ft
        -0x5at
        -0x56t
        -0x5et
        0x7dt
        -0x51t
        -0x54t
        -0x54t
        -0x61t
        -0x58t
        -0x52t
        -0x5at
        -0x4dt
        0x5at
        -0x65t
        -0x52t
        0x5at
    .end array-data
.end method

.method private final A0K()V
    .locals 6

    .line 34305
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/E1;->A0D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/dc;

    .line 34306
    .local v1, "plugin":Lcom/facebook/ads/redexgen/X/dc;
    instance-of v3, v4, Lcom/facebook/ads/redexgen/X/Da;

    sget-object v2, Lcom/facebook/ads/redexgen/X/E1;->A0G:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/E1;->A0G:[Ljava/lang/String;

    const-string v1, "f6iKlyOeYddBSkQQnaXOCc7KzH8j"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    .line 34307
    move-object v0, v4

    check-cast v0, Lcom/facebook/ads/redexgen/X/Da;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/E1;->A0R(Lcom/facebook/ads/redexgen/X/Da;)V

    .line 34308
    :cond_1
    invoke-interface {v4, p0}, Lcom/facebook/ads/redexgen/X/dc;->AAm(Lcom/facebook/ads/redexgen/X/E1;)V

    .line 34309
    .end local v1    # "plugin":Lcom/facebook/ads/redexgen/X/dc;
    goto :goto_0

    .line 34310
    :cond_2
    return-void
.end method

.method private A0L(I)V
    .locals 6

    .line 34311
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/E1;->A0B:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A10(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34312
    int-to-float v5, p1

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr v5, v0

    .line 34313
    .local v0, "sec":F
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/E1;->A0B:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x15

    const/16 v1, 0xd

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/E1;->A0G(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x15

    const/4 v0, 0x4

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/E1;->A0G(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    invoke-static {v4, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 34314
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 34315
    .end local v0    # "sec":F
    :cond_0
    return-void
.end method

.method private A0M(Lcom/facebook/ads/redexgen/X/UZ;)V
    .locals 2

    .line 34316
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/E1;->A02:Lcom/facebook/ads/redexgen/X/Ua;

    if-nez v0, :cond_0

    .line 34317
    return-void

    .line 34318
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/E1;->A02:Lcom/facebook/ads/redexgen/X/Ua;

    const/4 v0, 0x0

    invoke-virtual {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/Ua;->A04(Lcom/facebook/ads/redexgen/X/UZ;Ljava/util/Map;)V

    .line 34319
    return-void
.end method

.method public static synthetic A0N(Lcom/facebook/ads/redexgen/X/E1;)V
    .locals 0

    .line 34320
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/E1;->A0I()V

    return-void
.end method

.method public static synthetic A0O(Lcom/facebook/ads/redexgen/X/E1;I)V
    .locals 0

    .line 34321
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/E1;->A0L(I)V

    return-void
.end method

.method public static synthetic A0P(Lcom/facebook/ads/redexgen/X/E1;Lcom/facebook/ads/redexgen/X/UZ;)V
    .locals 0

    .line 34322
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/E1;->A0M(Lcom/facebook/ads/redexgen/X/UZ;)V

    return-void
.end method

.method private A0Q(Lcom/facebook/ads/redexgen/X/dc;)V
    .locals 1

    .line 34323
    instance-of v0, p1, Lcom/facebook/ads/redexgen/X/Da;

    if-eqz v0, :cond_0

    .line 34324
    move-object v0, p1

    check-cast v0, Lcom/facebook/ads/redexgen/X/Da;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/E1;->A0S(Lcom/facebook/ads/redexgen/X/Da;)V

    .line 34325
    :cond_0
    invoke-interface {p1, p0}, Lcom/facebook/ads/redexgen/X/dc;->AJk(Lcom/facebook/ads/redexgen/X/E1;)V

    .line 34326
    return-void
.end method

.method private A0R(Lcom/facebook/ads/redexgen/X/Da;)V
    .locals 1

    .line 34327
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Da;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 34328
    instance-of v0, p1, Lcom/facebook/ads/redexgen/X/2p;

    if-eqz v0, :cond_1

    .line 34329
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/E1;->A03:Lcom/facebook/ads/redexgen/X/dY;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/dY;->A02(Lcom/facebook/ads/redexgen/X/Da;)V

    .line 34330
    :cond_0
    :goto_0
    return-void

    .line 34331
    :cond_1
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/E1;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private A0S(Lcom/facebook/ads/redexgen/X/Da;)V
    .locals 1

    .line 34332
    instance-of v0, p1, Lcom/facebook/ads/redexgen/X/2p;

    if-eqz v0, :cond_0

    .line 34333
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/E1;->A03:Lcom/facebook/ads/redexgen/X/dY;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/dY;->A03(Lcom/facebook/ads/redexgen/X/Da;)V

    .line 34334
    :goto_0
    return-void

    .line 34335
    :cond_0
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/XP;->A0H(Landroid/view/View;)V

    goto :goto_0
.end method

.method public static A0T(F)Z
    .locals 1

    .line 34336
    const v0, 0x3f333333    # 0.7f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A0U(F)Z
    .locals 1

    .line 34337
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A0V(F)Z
    .locals 1

    .line 34338
    const v0, 0x3f99999a    # 1.2f

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A0W(Lcom/facebook/ads/redexgen/X/dL;)Z
    .locals 1

    .line 34339
    invoke-static {}, Lcom/facebook/ads/redexgen/X/eF;->A03()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/U7;->A2t(Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method public static synthetic A0X(Lcom/facebook/ads/redexgen/X/E1;)Z
    .locals 0

    .line 34340
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/E1;->A04:Z

    return p0
.end method

.method public static synthetic A0Y(Lcom/facebook/ads/redexgen/X/E1;Z)Z
    .locals 0

    .line 34341
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/E1;->A04:Z

    return p1
.end method


# virtual methods
.method public final A0Z()V
    .locals 2

    .line 34342
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/E1;->A0E:Lcom/facebook/ads/redexgen/X/eS;

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/eS;->setVideoStateChangeListener(Lcom/facebook/ads/redexgen/X/eV;)V

    .line 34343
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/E1;->A0E:Lcom/facebook/ads/redexgen/X/eS;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/eS;->destroy()V

    .line 34344
    return-void
.end method

.method public final A0a()V
    .locals 1

    .line 34345
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/E1;->A0q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34346
    return-void

    .line 34347
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/E1;->A0E:Lcom/facebook/ads/redexgen/X/eS;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/eS;->A9V()V

    .line 34348
    return-void
.end method

.method public final A0b()V
    .locals 2

    .line 34349
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/E1;->A0D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/dc;

    .line 34350
    .local v1, "plugin":Lcom/facebook/ads/redexgen/X/dc;
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/E1;->A0Q(Lcom/facebook/ads/redexgen/X/dc;)V

    .line 34351
    .end local v1    # "plugin":Lcom/facebook/ads/redexgen/X/dc;
    goto :goto_0

    .line 34352
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/E1;->A0D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 34353
    return-void
.end method

.method public final A0c(I)V
    .locals 6

    .line 34354
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/E1;->A03:Lcom/facebook/ads/redexgen/X/dY;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dY;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 34355
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v5, 0xd

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 34356
    const/16 v3, 0xa

    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 34357
    const/16 v2, 0x9

    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 34358
    iget v1, p0, Lcom/facebook/ads/redexgen/X/E1;->A00:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, v1, v0

    if-nez v0, :cond_0

    .line 34359
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/E1;->A0E:Lcom/facebook/ads/redexgen/X/eS;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/E1;->A06(Lcom/facebook/ads/redexgen/X/eS;)F

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/E1;->A00:F

    .line 34360
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 34361
    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 34362
    :goto_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/E1;->A03:Lcom/facebook/ads/redexgen/X/dY;

    sget-object v1, Lcom/facebook/ads/redexgen/X/E1;->A0G:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x1

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/E1;->A0G:[Ljava/lang/String;

    const-string v1, "Fk13SNDKaQVX0dV87s1e6TAwbDOb9nQX"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {v3, v4}, Lcom/facebook/ads/redexgen/X/dY;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 34363
    return-void

    .line 34364
    :cond_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/E1;->A00:F

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/E1;->A0V(F)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 34365
    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 34366
    :cond_2
    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0d(I)V
    .locals 2

    .line 34367
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/E1;->A08:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 34368
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/E1;->A0E:Lcom/facebook/ads/redexgen/X/eS;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/eS;->seekTo(I)V

    .line 34369
    return-void
.end method

.method public final A0e(I)V
    .locals 1

    .line 34370
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/E1;->A0E:Lcom/facebook/ads/redexgen/X/eS;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/eS;->AJU(I)V

    .line 34371
    return-void
.end method

.method public final A0f(Landroid/animation/AnimatorSet;Z)V
    .locals 1

    .line 34372
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/E1;->A03:Lcom/facebook/ads/redexgen/X/dY;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/dY;->A01(Landroid/animation/AnimatorSet;Z)V

    .line 34373
    return-void
.end method

.method public final A0g(Lcom/facebook/ads/redexgen/X/dT;)V
    .locals 2

    .line 34374
    new-instance v1, Lcom/facebook/ads/redexgen/X/E8;

    invoke-direct {v1, p0}, Lcom/facebook/ads/redexgen/X/E8;-><init>(Lcom/facebook/ads/redexgen/X/E1;)V

    .line 34375
    .local v0, "skipRunnable":Lcom/facebook/ads/redexgen/X/Vt;
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/E1;->A07:Z

    if-eqz v0, :cond_0

    .line 34376
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/XJ;->A00(Ljava/lang/Runnable;)V

    .line 34377
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/E1;->A0E:Lcom/facebook/ads/redexgen/X/eS;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/dT;->A03()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/eS;->AJH(I)V

    .line 34378
    return-void

    .line 34379
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/E1;->A09:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final A0h(Lcom/facebook/ads/redexgen/X/db;I)V
    .locals 3

    .line 34380
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/E1;->A04:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/E1;->A0E:Lcom/facebook/ads/redexgen/X/eS;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/eS;->getState()Lcom/facebook/ads/redexgen/X/eU;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/eU;->A06:Lcom/facebook/ads/redexgen/X/eU;

    if-ne v1, v0, :cond_0

    .line 34381
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/E1;->A04:Z

    .line 34382
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/E1;->A0E:Lcom/facebook/ads/redexgen/X/eS;

    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/eS;->AJM(Lcom/facebook/ads/redexgen/X/db;I)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/E1;->A0G:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x34

    if-eq v1, v0, :cond_1

    .line 34383
    sget-object v2, Lcom/facebook/ads/redexgen/X/E1;->A0G:[Ljava/lang/String;

    const-string v1, "hMpnI8E"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0i(Lcom/facebook/ads/redexgen/X/dc;)V
    .locals 1

    .line 34384
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/E1;->A0D:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34385
    return-void
.end method

.method public final A0j(Lcom/facebook/ads/redexgen/X/dc;)V
    .locals 1

    .line 34386
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/E1;->A0D:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 34387
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/E1;->A0Q(Lcom/facebook/ads/redexgen/X/dc;)V

    .line 34388
    return-void
.end method

.method public final A0k(Z)V
    .locals 1

    .line 34389
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/E1;->A0l(ZI)V

    .line 34390
    return-void
.end method

.method public final A0l(ZI)V
    .locals 1

    .line 34391
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/E1;->A0q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34392
    return-void

    .line 34393
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/E1;->A0E:Lcom/facebook/ads/redexgen/X/eS;

    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/eS;->AG7(ZI)V

    .line 34394
    return-void
.end method

.method public final A0m(ZZI)V
    .locals 0

    .line 34395
    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/E1;->A06:Z

    .line 34396
    invoke-virtual {p0, p1, p3}, Lcom/facebook/ads/redexgen/X/E1;->A0l(ZI)V

    .line 34397
    return-void
.end method

.method public final A0n()Z
    .locals 1

    .line 34398
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/E1;->A0E:Lcom/facebook/ads/redexgen/X/eS;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/eS;->A9i()Z

    move-result v0

    return v0
.end method

.method public final A0o()Z
    .locals 1

    .line 34399
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/E1;->A0E:Lcom/facebook/ads/redexgen/X/eS;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/eS;->A9j()Z

    move-result v0

    return v0
.end method

.method public final A0p()Z
    .locals 2

    .line 34400
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/E1;->getVolume()F

    move-result v1

    const/4 v0, 0x0

    cmpl-float v0, v1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0q()Z
    .locals 2

    .line 34401
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/E1;->getState()Lcom/facebook/ads/redexgen/X/eU;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/eU;->A05:Lcom/facebook/ads/redexgen/X/eU;

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0r()Z
    .locals 1

    .line 34402
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/E1;->A0q()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/E1;->A0E:Lcom/facebook/ads/redexgen/X/eS;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/eS;->AAT()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0s()Z
    .locals 2

    .line 34403
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/E1;->getState()Lcom/facebook/ads/redexgen/X/eU;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/eU;->A0A:Lcom/facebook/ads/redexgen/X/eU;

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0t()Z
    .locals 1

    .line 34404
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/E1;->A07:Z

    return v0
.end method

.method public final AAH()Z
    .locals 1

    .line 34405
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/E1;->A0B:Lcom/facebook/ads/redexgen/X/dL;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/E1;->A0W(Lcom/facebook/ads/redexgen/X/dL;)Z

    move-result v0

    return v0
.end method

.method public final AAM()Z
    .locals 1

    .line 34406
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/E1;->A05:Z

    return v0
.end method

.method public final ADK(JJJF)V
    .locals 9

    .line 34407
    move-object v1, p0

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/E1;->A0B:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A1v(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 34408
    return-void

    .line 34409
    :cond_0
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/E1;->A0C:Lcom/facebook/ads/redexgen/X/Te;

    new-instance v1, Lcom/facebook/ads/redexgen/X/3Z;

    move/from16 v8, p7

    move-wide v6, p5

    move-wide v4, p3

    move-wide v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/facebook/ads/redexgen/X/3Z;-><init>(JJJF)V

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Te;->A02(Lcom/facebook/ads/redexgen/X/Td;)V

    .line 34410
    return-void
.end method

.method public final AE9()V
    .locals 2

    .line 34411
    const/4 v1, 0x1

    const/4 v0, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/E1;->A0l(ZI)V

    .line 34412
    return-void
.end method

.method public final AEA()V
    .locals 2

    .line 34413
    sget-object v1, Lcom/facebook/ads/redexgen/X/db;->A04:Lcom/facebook/ads/redexgen/X/db;

    const/4 v0, 0x6

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/E1;->A0h(Lcom/facebook/ads/redexgen/X/db;I)V

    .line 34414
    return-void
.end method

.method public final AF9(II)V
    .locals 3

    .line 34415
    new-instance v1, Lcom/facebook/ads/redexgen/X/EB;

    invoke-direct {v1, p0, p1, p2}, Lcom/facebook/ads/redexgen/X/EB;-><init>(Lcom/facebook/ads/redexgen/X/E1;II)V

    .line 34416
    .local v0, "seekRunnable":Lcom/facebook/ads/redexgen/X/Vt;
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/E1;->A07:Z

    if-eqz v0, :cond_0

    .line 34417
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/XJ;->A00(Ljava/lang/Runnable;)V

    .line 34418
    :goto_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/E1;->A0I()V

    sget-object v1, Lcom/facebook/ads/redexgen/X/E1;->A0G:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x1

    if-eq v1, v0, :cond_1

    .line 34419
    sget-object v2, Lcom/facebook/ads/redexgen/X/E1;->A0G:[Ljava/lang/String;

    const-string v1, "9p5A7Zams3NJ3CBp1FBA5yfXzv5AdeGa"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    return-void

    .line 34420
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/E1;->A09:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final AFt(Lcom/facebook/ads/redexgen/X/eU;)V
    .locals 3

    .line 34421
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/E1;->getCurrentPositionInMillis()I

    move-result v2

    .line 34422
    .local v0, "currentPositionMS":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/E1;->getDuration()I

    move-result v0

    .line 34423
    .local v1, "duration":I
    new-instance v1, Lcom/facebook/ads/redexgen/X/ED;

    invoke-direct {v1, p0, p1, v2, v0}, Lcom/facebook/ads/redexgen/X/ED;-><init>(Lcom/facebook/ads/redexgen/X/E1;Lcom/facebook/ads/redexgen/X/eU;II)V

    .line 34424
    .local v2, "stateRunnable":Lcom/facebook/ads/redexgen/X/Vt;
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/E1;->A07:Z

    if-eqz v0, :cond_0

    .line 34425
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/XJ;->A00(Ljava/lang/Runnable;)V

    .line 34426
    :goto_0
    return-void

    .line 34427
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/E1;->A09:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public getCurrentPositionInMillis()I
    .locals 1

    .line 34428
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/E1;->A0E:Lcom/facebook/ads/redexgen/X/eS;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/eS;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public getDuration()I
    .locals 1

    .line 34429
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/E1;->A0E:Lcom/facebook/ads/redexgen/X/eS;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/eS;->getDuration()I

    move-result v0

    return v0
.end method

.method public getEventBus()Lcom/facebook/ads/redexgen/X/Te;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/ads/redexgen/X/Te<",
            "Lcom/facebook/ads/redexgen/X/Tf;",
            "Lcom/facebook/ads/redexgen/X/Td;",
            ">;"
        }
    .end annotation

    .line 34430
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/E1;->A0C:Lcom/facebook/ads/redexgen/X/Te;

    return-object v0
.end method

.method public getInitialBufferTime()J
    .locals 2

    .line 34431
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/E1;->A0E:Lcom/facebook/ads/redexgen/X/eS;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/eS;->getInitialBufferTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPlugins()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/dc;",
            ">;"
        }
    .end annotation

    .line 34432
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/E1;->A0D:Ljava/util/List;

    return-object v0
.end method

.method public getState()Lcom/facebook/ads/redexgen/X/eU;
    .locals 1

    .line 34433
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/E1;->A0E:Lcom/facebook/ads/redexgen/X/eS;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/eS;->getState()Lcom/facebook/ads/redexgen/X/eU;

    move-result-object v0

    return-object v0
.end method

.method public getStateHandler()Landroid/os/Handler;
    .locals 1

    .line 34434
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/E1;->A09:Landroid/os/Handler;

    return-object v0
.end method

.method public getTextureView()Landroid/view/TextureView;
    .locals 1

    .line 34435
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/E1;->A0E:Lcom/facebook/ads/redexgen/X/eS;

    check-cast v0, Landroid/view/TextureView;

    return-object v0
.end method

.method public getVideoHeight()I
    .locals 1

    .line 34436
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/E1;->A0E:Lcom/facebook/ads/redexgen/X/eS;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/eS;->getVideoHeight()I

    move-result v0

    return v0
.end method

.method public getVideoImplView()Landroid/view/View;
    .locals 1

    .line 34437
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/E1;->A0E:Lcom/facebook/ads/redexgen/X/eS;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/eS;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getVideoProgressReportIntervalMs()I
    .locals 1

    .line 34438
    iget v0, p0, Lcom/facebook/ads/redexgen/X/E1;->A01:I

    return v0
.end method

.method public getVideoStartReason()Lcom/facebook/ads/redexgen/X/db;
    .locals 1

    .line 34439
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/E1;->A0E:Lcom/facebook/ads/redexgen/X/eS;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/eS;->getStartReason()Lcom/facebook/ads/redexgen/X/db;

    move-result-object v0

    return-object v0
.end method

.method public getVideoView()Landroid/view/View;
    .locals 1

    .line 34440
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/E1;->A03:Lcom/facebook/ads/redexgen/X/dY;

    return-object v0
.end method

.method public getVideoWidth()I
    .locals 1

    .line 34441
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/E1;->A0E:Lcom/facebook/ads/redexgen/X/eS;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/eS;->getVideoWidth()I

    move-result v0

    return v0
.end method

.method public getVolume()F
    .locals 1

    .line 34442
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/E1;->A0E:Lcom/facebook/ads/redexgen/X/eS;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/eS;->getVolume()F

    move-result v0

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 34443
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/E1;->A0C:Lcom/facebook/ads/redexgen/X/Te;

    sget-object v0, Lcom/facebook/ads/redexgen/X/E1;->A0N:Lcom/facebook/ads/redexgen/X/DD;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Te;->A02(Lcom/facebook/ads/redexgen/X/Td;)V

    .line 34444
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 34445
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 34446
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/E1;->A0C:Lcom/facebook/ads/redexgen/X/Te;

    sget-object v0, Lcom/facebook/ads/redexgen/X/E1;->A0O:Lcom/facebook/ads/redexgen/X/DC;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Te;->A02(Lcom/facebook/ads/redexgen/X/Td;)V

    .line 34447
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 34448
    return-void
.end method

.method public setControlsAnchorView(Landroid/view/View;)V
    .locals 1

    .line 34449
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/E1;->A0E:Lcom/facebook/ads/redexgen/X/eS;

    if-eqz v0, :cond_0

    .line 34450
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/E1;->A0E:Lcom/facebook/ads/redexgen/X/eS;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/eS;->setControlsAnchorView(Landroid/view/View;)V

    .line 34451
    :cond_0
    return-void
.end method

.method public setFunnelLoggingHandler(Lcom/facebook/ads/redexgen/X/Ua;)V
    .locals 0

    .line 34452
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/E1;->A02:Lcom/facebook/ads/redexgen/X/Ua;

    .line 34453
    return-void
.end method

.method public setIsFullScreen(Z)V
    .locals 1

    .line 34454
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/E1;->A05:Z

    .line 34455
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/E1;->A0E:Lcom/facebook/ads/redexgen/X/eS;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/eS;->setFullScreen(Z)V

    .line 34456
    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 34457
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 34458
    return-void
.end method

.method public setRoundedCornerVideoView(F)V
    .locals 1

    .line 34459
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/E1;->A03:Lcom/facebook/ads/redexgen/X/dY;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/dY;->setRoundedCornersVideoStyle(F)V

    .line 34460
    return-void
.end method

.method public setVideoMPD(Ljava/lang/String;)V
    .locals 1

    .line 34461
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/E1;->A0E:Lcom/facebook/ads/redexgen/X/eS;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/eS;->setVideoMPD(Ljava/lang/String;)V

    .line 34462
    return-void
.end method

.method public setVideoProgressReportIntervalMs(I)V
    .locals 0

    .line 34463
    iput p1, p0, Lcom/facebook/ads/redexgen/X/E1;->A01:I

    .line 34464
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 3

    .line 34465
    if-nez p1, :cond_0

    .line 34466
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/E1;->A0b()V

    .line 34467
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/E1;->A04:Z

    .line 34468
    return-void

    .line 34469
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/E1;->A0K()V

    sget-object v1, Lcom/facebook/ads/redexgen/X/E1;->A0G:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xa

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 34470
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/E1;->A0G:[Ljava/lang/String;

    const-string v1, "2vtziZXFfU"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/E1;->A0E:Lcom/facebook/ads/redexgen/X/eS;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/eS;->setup(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public setVideoURI(Ljava/lang/String;)V
    .locals 1

    .line 34471
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/E1;->A0B:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/LH;->A3c(Ljava/lang/String;)V

    .line 34472
    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/WQ;->A00(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/E1;->setVideoURI(Landroid/net/Uri;)V

    .line 34473
    return-void

    .line 34474
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setVolume(F)V
    .locals 2

    .line 34475
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 34476
    sget-object v0, Lcom/facebook/ads/redexgen/X/UZ;->A0n:Lcom/facebook/ads/redexgen/X/UZ;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/E1;->A0M(Lcom/facebook/ads/redexgen/X/UZ;)V

    .line 34477
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/E1;->A0B:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LH;->A3g()V

    .line 34478
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/E1;->A0E:Lcom/facebook/ads/redexgen/X/eS;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/eS;->setRequestedVolume(F)V

    .line 34479
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/E1;->getEventBus()Lcom/facebook/ads/redexgen/X/Te;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/E1;->A0M:Lcom/facebook/ads/redexgen/X/DF;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Te;->A02(Lcom/facebook/ads/redexgen/X/Td;)V

    .line 34480
    return-void

    .line 34481
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/UZ;->A0m:Lcom/facebook/ads/redexgen/X/UZ;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/E1;->A0M(Lcom/facebook/ads/redexgen/X/UZ;)V

    .line 34482
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/E1;->A0B:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LH;->A3f()V

    goto :goto_0
.end method
