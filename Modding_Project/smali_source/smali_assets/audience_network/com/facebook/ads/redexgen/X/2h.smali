.class public abstract Lcom/facebook/ads/redexgen/X/2h;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/2f;,
        Lcom/facebook/ads/redexgen/X/2g;
    }
.end annotation


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;

.field public static final A02:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/2f;",
            ">;"
        }
    .end annotation
.end field

.field public static final A03:Ljava/util/regex/Pattern;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 86
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "GVeqRr88eErbsFWt7Zyfruf5"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "wxj6GMJJHrqzMl1sJI6PipHFTxOXGRz7"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "RvxQI1Pfb9FvcjGIis5Xa2IsZ1O1jyWN"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "aqZmlWCmiVFzo11RZMz1pcuKr30pTZ7V"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "9PLW7Gxq7uBTsV"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "7C"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "H"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "2Y1axbTDI7FTMPtf96QBUHvxuVSMJwkx"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/2h;->A01:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/2h;->A0B()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/2h;->A02:Ljava/util/ArrayList;

    .line 87
    const/4 v2, 0x0

    const/16 v1, 0x2b

    const/16 v0, 0x23

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/2h;->A03:Ljava/util/regex/Pattern;

    .line 88
    return-void
.end method

.method public static A00(Ljava/lang/String;)I
    .locals 6

    .line 10152
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v5, 0x0

    const/4 v4, 0x6

    const/4 v3, 0x5

    sparse-switch v0, :sswitch_data_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 10153
    return v5

    .line 10154
    :sswitch_0
    const/16 v2, 0x233

    const/16 v1, 0xd

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_1
    const/16 v2, 0x24d

    const/16 v1, 0x10

    const/16 v0, 0x30

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_2
    const/16 v2, 0x190

    const/16 v1, 0xa

    const/16 v0, 0x7e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_3
    const/16 v2, 0x187

    const/16 v1, 0x9

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const/16 v2, 0x17e

    const/16 v1, 0x9

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_5
    const/16 v2, 0x240

    const/16 v1, 0xd

    const/16 v0, 0x23

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_6
    const/16 v2, 0x19a

    const/16 v1, 0xe

    const/16 v0, 0x4c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto/16 :goto_0

    .line 10155
    :pswitch_0
    const/16 v0, 0xe

    return v0

    .line 10156
    :pswitch_1
    const/16 v0, 0x8

    return v0

    .line 10157
    :pswitch_2
    const/4 v0, 0x7

    return v0

    .line 10158
    :pswitch_3
    const/16 v0, 0x11

    return v0

    .line 10159
    :pswitch_4
    const/16 v0, 0x12

    return v0

    .line 10160
    :pswitch_5
    return v4

    .line 10161
    :pswitch_6
    return v3

    :sswitch_data_0
    .sparse-switch
        -0x7e929daa -> :sswitch_6
        -0x41455b98 -> :sswitch_5
        0xb269698 -> :sswitch_4
        0xb269699 -> :sswitch_3
        0x59ae0c65 -> :sswitch_2
        0x59c2dc42 -> :sswitch_1
        0x5cc95062 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static A01(Ljava/lang/String;)I
    .locals 5

    .line 10162
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10163
    const/4 v3, -0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/2h;->A01:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/2h;->A01:[Ljava/lang/String;

    const-string v1, "z"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    return v3

    .line 10164
    :cond_1
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/2h;->A0C(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10165
    const/4 v0, 0x1

    return v0

    .line 10166
    :cond_2
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/2h;->A0F(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10167
    const/4 v0, 0x2

    return v0

    .line 10168
    :cond_3
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/2h;->A0E(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10169
    const/4 v0, 0x3

    return v0

    .line 10170
    :cond_4
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/2h;->A0D(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 10171
    const/4 v0, 0x4

    return v0

    .line 10172
    :cond_5
    const/16 v2, 0x6c

    const/16 v1, 0xf

    const/16 v0, 0x2b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 10173
    const/16 v4, 0xcb

    const/16 v3, 0x12

    sget-object v2, Lcom/facebook/ads/redexgen/X/2h;->A01:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_7

    sget-object v2, Lcom/facebook/ads/redexgen/X/2h;->A01:[Ljava/lang/String;

    const-string v1, "P"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const/4 v0, 0x4

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 10174
    :goto_0
    const/16 v2, 0x151

    const/16 v1, 0x14

    const/16 v0, 0x2b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 10175
    :cond_6
    const/4 v0, 0x5

    return v0

    :cond_7
    sget-object v2, Lcom/facebook/ads/redexgen/X/2h;->A01:[Ljava/lang/String;

    const-string v1, "VYI9fOSlD70zieq9X0UMxroKft4rwUnu"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "fzGTPsiWQenzPklSlTFREKemGkoOHbxS"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/16 v0, 0x34

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    .line 10176
    :cond_8
    const/16 v2, 0xb0

    const/16 v1, 0x1b

    const/16 v0, 0xe

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 10177
    const/4 v3, 0x6

    sget-object v1, Lcom/facebook/ads/redexgen/X/2h;->A01:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_9

    sget-object v2, Lcom/facebook/ads/redexgen/X/2h;->A01:[Ljava/lang/String;

    const-string v1, "Wos1JoeCppSzgMBE4aaDrMH9ty47uNW2"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "garXensuyOOz0HbXKDJZL2oQiQLFCkBX"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return v3

    :cond_9
    sget-object v2, Lcom/facebook/ads/redexgen/X/2h;->A01:[Ljava/lang/String;

    const-string v1, "Xl"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    return v3

    .line 10178
    :cond_a
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/2h;->A02(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static A02(Ljava/lang/String;)I
    .locals 2

    .line 10179
    sget-object v0, Lcom/facebook/ads/redexgen/X/2h;->A02:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 10180
    .local v0, "customMimeTypeCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    if-ge v1, v0, :cond_0

    .line 10181
    sget-object v0, Lcom/facebook/ads/redexgen/X/2h;->A02:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 10182
    .local p0, "customMimeType":Lcom/facebook/ads/redexgen/X/2f;
    const/16 p0, 0x345

    const/16 v1, 0x8

    const/16 v0, 0x13

    invoke-static {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10183
    .end local v1    # "i":I
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public static A03(Ljava/lang/String;Ljava/lang/String;)I
    .locals 9

    .line 10184
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v8, 0x8

    const/4 v7, 0x7

    const/4 v6, 0x6

    const/4 v5, 0x5

    const/4 v4, 0x0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 10185
    return v4

    .line 10186
    :sswitch_0
    const/16 v2, 0x233

    const/16 v1, 0xd

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :sswitch_1
    const/16 v2, 0x24d

    const/16 v1, 0x10

    const/16 v0, 0x30

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :sswitch_2
    const/16 v2, 0x1fc

    const/16 v1, 0xa

    const/16 v0, 0x71

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_3
    const/16 v3, 0x190

    sget-object v1, Lcom/facebook/ads/redexgen/X/2h;->A01:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/2h;->A01:[Ljava/lang/String;

    const-string v1, "EwKVretPP4zz24GiY00TxrDW7emeby9T"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "B8KYZ6ZiEFEzb1yQSMInDl8qsLzStvEt"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/16 v1, 0xa

    const/16 v0, 0x7e

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const/16 v2, 0x187

    const/16 v1, 0x9

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_5
    const/16 v2, 0x17e

    const/16 v1, 0x9

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto/16 :goto_0

    :sswitch_6
    const/16 v2, 0x1ed

    const/16 v1, 0xf

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_7
    const/16 v2, 0x240

    const/16 v1, 0xd

    const/16 v0, 0x23

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto/16 :goto_0

    :sswitch_8
    const/16 v2, 0x19a

    const/16 v1, 0xe

    const/16 v0, 0x4c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto/16 :goto_0

    .line 10187
    :pswitch_0
    const/16 v0, 0xe

    return v0

    .line 10188
    :pswitch_1
    return v8

    .line 10189
    :pswitch_2
    return v7

    .line 10190
    :pswitch_3
    const/16 v0, 0x11

    return v0

    .line 10191
    :pswitch_4
    const/16 v0, 0x12

    return v0

    .line 10192
    :pswitch_5
    return v6

    .line 10193
    :pswitch_6
    return v5

    .line 10194
    :pswitch_7
    if-nez p1, :cond_2

    .line 10195
    return v4

    .line 10196
    :cond_2
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/2h;->A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2g;

    move-result-object v0

    .line 10197
    .local v0, "objectType":Lcom/facebook/ads/redexgen/X/2g;
    if-nez v0, :cond_3

    .line 10198
    return v4

    .line 10199
    :cond_3
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2g;->A00()I

    move-result v0

    return v0

    .line 10200
    .end local v0    # "objectType":Lcom/facebook/ads/redexgen/X/2g;
    :pswitch_8
    const/16 v0, 0x9

    return v0

    :sswitch_data_0
    .sparse-switch
        -0x7e929daa -> :sswitch_8
        -0x41455b98 -> :sswitch_7
        -0x3313c2e -> :sswitch_6
        0xb269698 -> :sswitch_5
        0xb269699 -> :sswitch_4
        0x59ae0c65 -> :sswitch_3
        0x59b1e81e -> :sswitch_2
        0x59c2dc42 -> :sswitch_1
        0x5cc95062 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2g;
    .locals 4

    .line 10201
    sget-object v0, Lcom/facebook/ads/redexgen/X/2h;->A03:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 10202
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const/4 p0, 0x0

    if-nez v0, :cond_0

    .line 10203
    return-object p0

    .line 10204
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 10205
    .local v1, "objectTypeIndicationHex":Ljava/lang/String;
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 10206
    .local v3, "audioObjectTypeIndicationDec":Ljava/lang/String;
    const/4 v1, 0x0

    .line 10207
    .local p0, "audioObjectTypeIndication":I
    const/16 v0, 0x10

    :try_start_0
    invoke-static {v2, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 10208
    .local p1, "objectTypeIndication":I
    if-eqz v3, :cond_1

    .line 10209
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10210
    :cond_1
    new-instance v0, Lcom/facebook/ads/redexgen/X/2g;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/2g;-><init>(II)V

    return-object v0

    .line 10211
    .end local p1
    .local p1, "e":Ljava/lang/NumberFormatException;
    :catch_0
    return-object p0
.end method

.method public static A05(I)Ljava/lang/String;
    .locals 4

    .line 10212
    sparse-switch p0, :sswitch_data_0

    .line 10213
    const/4 v0, 0x0

    return-object v0

    .line 10214
    :sswitch_0
    const/16 v2, 0x3dd

    const/16 v1, 0x13

    const/16 v0, 0x7f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 10215
    :sswitch_1
    const/16 v2, 0x220

    const/16 v1, 0xa

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 10216
    :sswitch_2
    const/16 v2, 0x24d

    const/16 v1, 0x10

    const/16 v0, 0x30

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 10217
    :sswitch_3
    const/16 v2, 0x240

    const/16 v1, 0xd

    const/16 v0, 0x23

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/2h;->A01:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/2h;->A01:[Ljava/lang/String;

    const-string v1, "SeyAy4vUnEUmatfpO54gBZBxkf1tAmXN"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "HK24g8A7blS5zcU5SJrZp7eHVCJ7RCNu"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    return-object v3

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/2h;->A01:[Ljava/lang/String;

    const-string v1, "QXfUpXWFkEqQPG6LX9fSFPLZ"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "Nb6RgsH4bduG1M"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    return-object v3

    .line 10218
    :sswitch_4
    const/16 v2, 0x190

    const/16 v1, 0xa

    const/16 v0, 0x7e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 10219
    :sswitch_5
    const/16 v2, 0x17e

    const/16 v1, 0x9

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 10220
    :sswitch_6
    const/16 v2, 0x3c0

    const/16 v1, 0xa

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 10221
    :sswitch_7
    const/16 v3, 0x333

    sget-object v2, Lcom/facebook/ads/redexgen/X/2h;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/2h;->A01:[Ljava/lang/String;

    const-string v1, "3q9GG3wULEgsyS1YbN3nnd24"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "ha3UTLVvbbrTPN"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const/16 v1, 0xa

    const/16 v0, 0x46

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/16 v1, 0xa

    const/16 v0, 0x46

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 10222
    :sswitch_8
    const/16 v2, 0x3ab

    const/16 v1, 0xa

    const/16 v0, 0x19

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/2h;->A01:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/2h;->A01:[Ljava/lang/String;

    const-string v1, "Q0G2Js2SP22VhhoMfC9OjreCCdB2eOqG"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "Q6nirM5b9Ts832tqRdA4gMIZJm5lUFYy"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    return-object v3

    .line 10223
    :sswitch_9
    const/16 v2, 0x1fc

    const/16 v1, 0xa

    const/16 v0, 0x71

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/2h;->A01:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/2h;->A01:[Ljava/lang/String;

    const-string v1, "3EgQ9ZCWIlOzJdI5B9z9UgtNSs58n98m"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "jjFHQ5Ntty1zFGyuhEkahCZpCi1GWUO2"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-object v3

    .line 10224
    :sswitch_a
    const/16 v2, 0x187

    const/16 v1, 0x9

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/2h;->A01:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/2h;->A01:[Ljava/lang/String;

    const-string v1, "XbJnvZsINxENz3xQ1kbTvdGI"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "tLEzDvxw28XrgL"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    return-object v3

    .line 10225
    :sswitch_b
    const/16 v2, 0x3b5

    const/16 v1, 0xb

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 10226
    :sswitch_c
    const/16 v2, 0x1ed

    const/16 v1, 0xf

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 10227
    :sswitch_d
    const/16 p0, 0x394

    const/16 v3, 0xa

    sget-object v1, Lcom/facebook/ads/redexgen/X/2h;->A01:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_4

    const/16 v0, 0x52

    invoke-static {p0, v3, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/2h;->A01:[Ljava/lang/String;

    const-string v1, "sU0jfjATw0ctdBiFmHYtQPiFW02EkiCX"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "guUIg4Lmsq3I11Gl64ANQL7INWldoWo0"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const/16 v0, 0x52

    invoke-static {p0, v3, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 10228
    :sswitch_e
    const/16 v2, 0x379

    const/16 v1, 0x9

    const/16 v0, 0x36

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 10229
    :sswitch_f
    const/16 v2, 0x39e

    const/16 v1, 0xd

    const/16 v0, 0x46

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_f
        0x21 -> :sswitch_e
        0x23 -> :sswitch_d
        0x40 -> :sswitch_c
        0x60 -> :sswitch_b
        0x61 -> :sswitch_b
        0x62 -> :sswitch_b
        0x63 -> :sswitch_b
        0x64 -> :sswitch_b
        0x65 -> :sswitch_b
        0x66 -> :sswitch_c
        0x67 -> :sswitch_c
        0x68 -> :sswitch_c
        0x69 -> :sswitch_9
        0x6a -> :sswitch_8
        0x6b -> :sswitch_9
        0x6c -> :sswitch_7
        0xa3 -> :sswitch_6
        0xa5 -> :sswitch_5
        0xa6 -> :sswitch_4
        0xa9 -> :sswitch_3
        0xaa -> :sswitch_2
        0xab -> :sswitch_2
        0xac -> :sswitch_3
        0xad -> :sswitch_1
        0xae -> :sswitch_a
        0xb1 -> :sswitch_0
    .end sparse-switch
.end method

.method public static A06(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/2h;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x25

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A07(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 10230
    if-nez p0, :cond_1

    .line 10231
    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/2h;->A01:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/2h;->A01:[Ljava/lang/String;

    const-string v1, "SvDJvdchxZ9YSu8lSvYXeZCMUTwhtG1x"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "IUgKdAdGpS8rKdzIu2M1OICDLczzph13"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    return-object v3

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 10232
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/iY;->A01(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 10233
    const/16 v2, 0x2c5

    const/4 v1, 0x4

    const/4 v0, 0x7

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v2, 0x2c9

    const/4 v1, 0x4

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10234
    :cond_2
    const/16 v2, 0x379

    const/16 v1, 0x9

    const/16 v0, 0x36

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 10235
    :cond_3
    const/16 v2, 0x326

    const/4 v1, 0x4

    const/16 v0, 0x7a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const/16 v2, 0x32a

    const/4 v1, 0x4

    const/16 v0, 0x7b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 10236
    :cond_4
    const/16 v2, 0x394

    const/16 v1, 0xa

    const/16 v0, 0x52

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 10237
    :cond_5
    const/16 v2, 0x308

    const/4 v1, 0x4

    const/16 v0, 0x43

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 10238
    const/16 v2, 0x304

    const/4 v1, 0x4

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 10239
    const/16 v2, 0x310

    const/4 v1, 0x4

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 10240
    const/16 v5, 0x30c

    const/4 v4, 0x4

    sget-object v2, Lcom/facebook/ads/redexgen/X/2h;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_7

    sget-object v2, Lcom/facebook/ads/redexgen/X/2h;->A01:[Ljava/lang/String;

    const-string v1, "QleFjH3SLznkA7Uwmtw8Ximq4GNMAWvA"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "PfY3xwJ2HsEdr0yMvzji2NF813hiEd0w"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const/16 v0, 0x40

    invoke-static {v5, v4, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 10241
    :cond_6
    :goto_0
    const/16 v2, 0x382

    const/16 v1, 0x12

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_7
    sget-object v2, Lcom/facebook/ads/redexgen/X/2h;->A01:[Ljava/lang/String;

    const-string v1, "9"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const/16 v0, 0xe

    invoke-static {v5, v4, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_0

    .line 10242
    :cond_8
    const/16 v2, 0x2c1

    const/4 v1, 0x4

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 10243
    const/16 v2, 0x36f

    const/16 v1, 0xa

    const/16 v0, 0x41

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 10244
    :cond_9
    const/16 p0, 0x401

    const/4 v5, 0x3

    const/16 v4, 0x58

    sget-object v1, Lcom/facebook/ads/redexgen/X/2h;->A01:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_a

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_a
    sget-object v2, Lcom/facebook/ads/redexgen/X/2h;->A01:[Ljava/lang/String;

    const-string v1, "LIs8es7LDxkf9lR87RnCT0Q6IgA77Jet"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "MyiayBE8EONbf9RMcxAbsuNI3CAOFfaC"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-static {p0, v5, v4}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    const/16 v2, 0x3fa

    const/4 v1, 0x4

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 10245
    :cond_b
    const/16 v2, 0x3dd

    const/16 v1, 0x13

    const/16 v0, 0x7f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 10246
    :cond_c
    const/16 v2, 0x3fe

    const/4 v1, 0x3

    const/16 v0, 0x7b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    const/16 v2, 0x3f6

    const/4 v1, 0x4

    const/16 v0, 0x3f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 10247
    :cond_d
    const/16 v2, 0x3ca

    const/16 v1, 0x13

    const/16 v0, 0x11

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 10248
    :cond_e
    const/16 v2, 0x34d

    const/4 v1, 0x4

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 10249
    const/4 v4, 0x0

    .line 10250
    .local v0, "mimeType":Ljava/lang/String;
    const/16 v2, 0x351

    const/4 v1, 0x5

    const/16 v0, 0x11

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 10251
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/2h;->A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2g;

    move-result-object v0

    .line 10252
    .local v1, "objectType":Lcom/facebook/ads/redexgen/X/2g;
    if-eqz v0, :cond_f

    .line 10253
    iget v0, v0, Lcom/facebook/ads/redexgen/X/2g;->A01:I

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2h;->A05(I)Ljava/lang/String;

    move-result-object v4

    .line 10254
    .end local v1    # "objectType":Lcom/facebook/ads/redexgen/X/2g;
    :cond_f
    if-nez v4, :cond_10

    const/16 v2, 0x1ed

    const/16 v1, 0xf

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v4

    :cond_10
    return-object v4

    .line 10255
    .end local v0    # "mimeType":Ljava/lang/String;
    :cond_11
    const/16 v2, 0x33d

    const/4 v1, 0x4

    const/16 v0, 0x50

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 10256
    const/16 v2, 0x1d0

    const/16 v1, 0xa

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 10257
    :cond_12
    const/16 v2, 0x341

    const/4 v1, 0x4

    const/16 v0, 0x56

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 10258
    const/16 v2, 0x1da

    const/16 v1, 0xa

    const/16 v0, 0x7e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/2h;->A01:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_13

    sget-object v2, Lcom/facebook/ads/redexgen/X/2h;->A01:[Ljava/lang/String;

    const-string v1, "D6"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    return-object v3

    :cond_13
    sget-object v2, Lcom/facebook/ads/redexgen/X/2h;->A01:[Ljava/lang/String;

    const-string v1, "g"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    return-object v3

    .line 10259
    :cond_14
    const/16 v2, 0x2b

    const/4 v1, 0x4

    const/16 v0, 0x63

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    const/16 v2, 0x2e4

    const/4 v1, 0x4

    const/16 v0, 0x63

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 10260
    :cond_15
    const/16 v2, 0x17e

    const/16 v1, 0x9

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 10261
    :cond_16
    const/16 v2, 0x318

    const/4 v1, 0x4

    const/16 v0, 0x63

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    const/16 v2, 0x2ec

    const/4 v1, 0x4

    const/16 v0, 0x3d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 10262
    :cond_17
    const/16 v2, 0x190

    const/16 v1, 0xa

    const/16 v0, 0x7e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 10263
    :cond_18
    const/16 v2, 0x314

    const/4 v1, 0x4

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 10264
    const/16 v2, 0x19a

    const/16 v1, 0xe

    const/16 v0, 0x4c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 10265
    :cond_19
    const/16 v2, 0x2f

    const/4 v1, 0x4

    const/16 v0, 0xf

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    const/16 v4, 0x2e8

    sget-object v2, Lcom/facebook/ads/redexgen/X/2h;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1b

    sget-object v2, Lcom/facebook/ads/redexgen/X/2h;->A01:[Ljava/lang/String;

    const-string v1, "nW"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const/4 v1, 0x4

    const/16 v0, 0x16

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 10266
    :cond_1a
    :goto_1
    const/16 v2, 0x187

    const/16 v1, 0x9

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1b
    sget-object v2, Lcom/facebook/ads/redexgen/X/2h;->A01:[Ljava/lang/String;

    const-string v1, "Hu8TImITUClzOpUW7nYqBBb98KuBEnkB"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "WY5RgWx36bezmxj9o8LdwExpmHYl5ckj"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v1, 0x2

    const/4 v0, 0x2

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_1

    .line 10267
    :cond_1c
    const/16 v2, 0x2f0

    const/4 v1, 0x4

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/2h;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1d

    sget-object v2, Lcom/facebook/ads/redexgen/X/2h;->A01:[Ljava/lang/String;

    const-string v1, "M91Alhi5VnxALE4ukQ4PKVvL"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "SMSBdxcTP4jmFg"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 10268
    :goto_2
    const/16 v2, 0x240

    const/16 v1, 0xd

    const/16 v0, 0x23

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1d
    sget-object v2, Lcom/facebook/ads/redexgen/X/2h;->A01:[Ljava/lang/String;

    const-string v1, "Cp"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_2

    .line 10269
    :cond_1e
    const/16 v2, 0x2f4

    const/4 v1, 0x4

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 10270
    const/16 v2, 0x25d

    const/16 v1, 0x1c

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 10271
    :cond_1f
    const/16 v2, 0x2f8

    const/4 v1, 0x4

    const/16 v0, 0x66

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    const/16 v2, 0x2fc

    const/4 v1, 0x4

    const/16 v0, 0x78

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 10272
    :cond_20
    const/16 v2, 0x24d

    const/16 v1, 0x10

    const/16 v0, 0x30

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 10273
    :cond_21
    const/16 v2, 0x300

    const/4 v1, 0x4

    const/16 v0, 0x14

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 10274
    const/16 v2, 0x279

    const/16 v1, 0x1c

    const/16 v0, 0x20

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 10275
    :cond_22
    const/16 v4, 0x356

    sget-object v2, Lcom/facebook/ads/redexgen/X/2h;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_23

    sget-object v2, Lcom/facebook/ads/redexgen/X/2h;->A01:[Ljava/lang/String;

    const-string v1, "S"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const/4 v1, 0x4

    const/16 v0, 0x75

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 10276
    :goto_3
    const/16 v2, 0x220

    const/16 v1, 0xa

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_23
    sget-object v2, Lcom/facebook/ads/redexgen/X/2h;->A01:[Ljava/lang/String;

    const-string v1, "Jkd2X7VsrwTzscknsDYl89LH"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "Ot0kU0Dq4n3kXQ"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const/4 v1, 0x0

    const/16 v0, 0x43

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    goto :goto_3

    .line 10277
    :cond_24
    const/16 v2, 0x3f0

    const/4 v1, 0x6

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 10278
    const/16 v2, 0x295

    const/16 v1, 0xc

    const/16 v0, 0x4c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 10279
    :cond_25
    const/16 v2, 0x322

    const/4 v1, 0x4

    const/16 v0, 0x5f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 10280
    const/16 v2, 0x1a8

    const/16 v1, 0xa

    const/4 v0, 0x2

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 10281
    :cond_26
    const/16 v2, 0x35a

    const/4 v1, 0x4

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 10282
    const/16 v2, 0x8a

    const/16 v1, 0x14

    const/16 v0, 0x22

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 10283
    :cond_27
    const/16 v2, 0x404

    const/4 v1, 0x4

    const/16 v0, 0x61

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 10284
    const/16 v2, 0x362

    const/16 v1, 0x8

    const/16 v0, 0x16

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 10285
    :cond_28
    const/16 v2, 0x2d3

    const/4 v1, 0x6

    const/16 v0, 0x41

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 10286
    const/16 v2, 0x46

    const/16 v1, 0x13

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 10287
    :cond_29
    const/16 v2, 0x31c

    const/4 v1, 0x6

    const/4 v0, 0x7

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2a

    const/16 v2, 0x2cd

    const/4 v1, 0x6

    const/16 v0, 0x41

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 10288
    :cond_2a
    const/16 v2, 0x33

    const/16 v1, 0x13

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 10289
    :cond_2b
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/2h;->A09(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static A08(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 10290
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 10291
    return-object p0

    .line 10292
    :sswitch_0
    const/16 v2, 0x1e4

    const/16 v1, 0x9

    const/16 v0, 0x29

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    const/16 v2, 0x2b6

    const/16 v1, 0xb

    const/16 v0, 0x5f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_2
    const/16 v2, 0x2aa

    const/16 v1, 0xc

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 10293
    :pswitch_0
    const/16 v2, 0x2a1

    const/16 v1, 0x9

    const/16 v0, 0x70

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 10294
    :pswitch_1
    const/16 v2, 0x1fc

    const/16 v1, 0xa

    const/16 v0, 0x71

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 10295
    :pswitch_2
    const/16 v2, 0x1a8

    const/16 v1, 0xa

    const/4 v0, 0x2

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x3c11ec0a -> :sswitch_2
        -0x22f81362 -> :sswitch_1
        0xb26c537 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static A09(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 10296
    sget-object v0, Lcom/facebook/ads/redexgen/X/2h;->A02:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 10297
    .local v0, "customMimeTypeCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    if-ge v1, v0, :cond_0

    .line 10298
    sget-object v0, Lcom/facebook/ads/redexgen/X/2h;->A02:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 10299
    .local p0, "customMimeType":Lcom/facebook/ads/redexgen/X/2f;
    const/16 p0, 0x2d9

    const/16 v1, 0xb

    const/16 v0, 0x1b

    invoke-static {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10300
    .end local v1    # "i":I
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static A0A(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 10301
    const/4 v2, 0x0

    if-nez p0, :cond_0

    .line 10302
    return-object v2

    .line 10303
    :cond_0
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 10304
    .local v1, "indexOfSlash":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_1

    .line 10305
    return-object v2

    .line 10306
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static A0B()V
    .locals 1

    const/16 v0, 0x408

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/2h;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x58t
        0x6bt
        0x76t
        0x32t
        0x67t
        0x5at
        0x28t
        0x2et
        0x5dt
        0x67t
        0x2bt
        0x7ct
        0x47t
        0x2bt
        0x5ct
        0x36t
        0x2bt
        0x3ft
        0x5bt
        0x7dt
        0x34t
        0x7bt
        0x2ft
        0x2et
        0x39t
        0x3ct
        0x5at
        0x28t
        0x2et
        0x5dt
        0x36t
        0x2bt
        0x3ft
        0x5bt
        0x7dt
        0x37t
        0x2at
        0x34t
        0x7bt
        0x2ft
        0x2ft
        0x39t
        0x22t
        0x27t
        0x25t
        0x6bt
        0x75t
        0x4bt
        0x49t
        0x7t
        0x1et
        0x11t
        0x0t
        0x0t
        0x1ct
        0x19t
        0x13t
        0x11t
        0x4t
        0x19t
        0x1ft
        0x1et
        0x5ft
        0x13t
        0x15t
        0x11t
        0x5dt
        0x46t
        0x40t
        0x48t
        0x5bt
        0x4at
        0x4at
        0x56t
        0x53t
        0x59t
        0x5bt
        0x4et
        0x53t
        0x55t
        0x54t
        0x15t
        0x59t
        0x5ft
        0x5bt
        0x17t
        0xdt
        0xat
        0x2t
        0x26t
        0x37t
        0x37t
        0x2bt
        0x2et
        0x24t
        0x26t
        0x33t
        0x2et
        0x28t
        0x29t
        0x68t
        0x23t
        0x31t
        0x25t
        0x34t
        0x32t
        0x25t
        0x34t
        0x6ft
        0x7et
        0x7et
        0x62t
        0x67t
        0x6dt
        0x6ft
        0x7at
        0x67t
        0x61t
        0x60t
        0x21t
        0x67t
        0x6at
        0x3dt
        0x7bt
        0x6at
        0x6at
        0x76t
        0x73t
        0x79t
        0x7bt
        0x6et
        0x73t
        0x75t
        0x74t
        0x35t
        0x6at
        0x7dt
        0x69t
        0x66t
        0x77t
        0x77t
        0x6bt
        0x6et
        0x64t
        0x66t
        0x73t
        0x6et
        0x68t
        0x69t
        0x28t
        0x73t
        0x73t
        0x6at
        0x6bt
        0x2ct
        0x7ft
        0x6at
        0x6bt
        0x4dt
        0x5ct
        0x5ct
        0x40t
        0x45t
        0x4ft
        0x4dt
        0x58t
        0x45t
        0x43t
        0x42t
        0x3t
        0x5at
        0x43t
        0x4et
        0x5ft
        0x59t
        0x4et
        0x4at
        0x5bt
        0x5bt
        0x47t
        0x42t
        0x48t
        0x4at
        0x5ft
        0x42t
        0x44t
        0x45t
        0x4t
        0x53t
        0x6t
        0x48t
        0x4at
        0x46t
        0x4et
        0x59t
        0x4at
        0x6t
        0x46t
        0x44t
        0x5ft
        0x42t
        0x44t
        0x45t
        0x70t
        0x61t
        0x61t
        0x7dt
        0x78t
        0x72t
        0x70t
        0x65t
        0x78t
        0x7et
        0x7ft
        0x3et
        0x69t
        0x3ct
        0x74t
        0x7ct
        0x62t
        0x76t
        0x3dt
        0x2ct
        0x2ct
        0x30t
        0x35t
        0x3ft
        0x3dt
        0x28t
        0x35t
        0x33t
        0x32t
        0x73t
        0x24t
        0x71t
        0x35t
        0x31t
        0x3dt
        0x3bt
        0x39t
        0x71t
        0x29t
        0x2et
        0x35t
        0x2bt
        0x3at
        0x3at
        0x26t
        0x23t
        0x29t
        0x2bt
        0x3et
        0x23t
        0x25t
        0x24t
        0x65t
        0x32t
        0x67t
        0x27t
        0x3at
        0x7et
        0x67t
        0x29t
        0x2ft
        0x2bt
        0x67t
        0x7ct
        0x7at
        0x72t
        0x45t
        0x54t
        0x54t
        0x48t
        0x4dt
        0x47t
        0x45t
        0x50t
        0x4dt
        0x4bt
        0x4at
        0xbt
        0x5ct
        0x9t
        0x49t
        0x54t
        0x10t
        0x9t
        0x52t
        0x50t
        0x50t
        0x3dt
        0x2ct
        0x2ct
        0x30t
        0x35t
        0x3ft
        0x3dt
        0x28t
        0x35t
        0x33t
        0x32t
        0x73t
        0x24t
        0x71t
        0x2dt
        0x29t
        0x35t
        0x3ft
        0x37t
        0x28t
        0x35t
        0x31t
        0x39t
        0x71t
        0x28t
        0x24t
        0x6ft
        0x3bt
        0x66t
        0x77t
        0x77t
        0x6bt
        0x6et
        0x64t
        0x66t
        0x73t
        0x6et
        0x68t
        0x69t
        0x28t
        0x7ft
        0x2at
        0x75t
        0x66t
        0x70t
        0x64t
        0x64t
        0x6ft
        0x7et
        0x7et
        0x62t
        0x67t
        0x6dt
        0x6ft
        0x7at
        0x67t
        0x61t
        0x60t
        0x21t
        0x76t
        0x23t
        0x7dt
        0x6dt
        0x7at
        0x6bt
        0x3dt
        0x3bt
        0x39t
        0x28t
        0x28t
        0x34t
        0x31t
        0x3bt
        0x39t
        0x2ct
        0x31t
        0x37t
        0x36t
        0x77t
        0x20t
        0x75t
        0x2bt
        0x2dt
        0x3at
        0x2at
        0x31t
        0x28t
        0x4ft
        0x5bt
        0x4at
        0x47t
        0x41t
        0x5ft
        0x4bt
        0x5at
        0x57t
        0x51t
        0x11t
        0x5ft
        0x5dt
        0xdt
        0x7ct
        0x68t
        0x79t
        0x74t
        0x72t
        0x32t
        0x7ct
        0x7et
        0x29t
        0x3at
        0x2et
        0x3ft
        0x32t
        0x34t
        0x74t
        0x3et
        0x3at
        0x38t
        0x68t
        0x8t
        0x1ct
        0xdt
        0x0t
        0x6t
        0x46t
        0xct
        0x8t
        0xat
        0x5at
        0x44t
        0x3t
        0x6t
        0xat
        0x46t
        0x52t
        0x43t
        0x4et
        0x48t
        0x8t
        0x41t
        0x4bt
        0x46t
        0x44t
        0x17t
        0x3t
        0x12t
        0x1ft
        0x19t
        0x59t
        0x11t
        0x41t
        0x47t
        0x47t
        0x5bt
        0x17t
        0x1at
        0x17t
        0x1t
        0x19t
        0xdt
        0x1ct
        0x11t
        0x17t
        0x57t
        0x1ft
        0x4ft
        0x49t
        0x49t
        0x55t
        0x15t
        0x14t
        0x19t
        0xft
        0x5ct
        0x48t
        0x59t
        0x54t
        0x52t
        0x12t
        0x50t
        0x55t
        0x5ct
        0xct
        0x3at
        0x2et
        0x3ft
        0x32t
        0x34t
        0x74t
        0x36t
        0x33t
        0x36t
        0x6at
        0x6dt
        0x79t
        0x68t
        0x65t
        0x63t
        0x23t
        0x61t
        0x7ct
        0x3ft
        0x77t
        0x63t
        0x72t
        0x7ft
        0x79t
        0x39t
        0x7bt
        0x66t
        0x22t
        0x77t
        0x3bt
        0x7at
        0x77t
        0x62t
        0x7bt
        0x35t
        0x21t
        0x30t
        0x3dt
        0x3bt
        0x7bt
        0x39t
        0x24t
        0x31t
        0x33t
        0x7dt
        0x69t
        0x78t
        0x75t
        0x73t
        0x33t
        0x71t
        0x6ct
        0x79t
        0x7bt
        0x31t
        0x50t
        0x2dt
        0x4at
        0x5et
        0x4ft
        0x42t
        0x44t
        0x4t
        0x46t
        0x5bt
        0x4et
        0x4ct
        0x6t
        0x67t
        0x19t
        0x15t
        0x1t
        0x10t
        0x1dt
        0x1bt
        0x5bt
        0x1bt
        0x4t
        0x1t
        0x7t
        0x20t
        0x34t
        0x25t
        0x28t
        0x2et
        0x6et
        0x33t
        0x20t
        0x36t
        0x70t
        0x64t
        0x75t
        0x78t
        0x7et
        0x3et
        0x65t
        0x63t
        0x64t
        0x74t
        0x3ct
        0x79t
        0x75t
        0x67t
        0x73t
        0x62t
        0x6ft
        0x69t
        0x29t
        0x70t
        0x68t
        0x62t
        0x28t
        0x62t
        0x72t
        0x75t
        0x74t
        0x60t
        0x71t
        0x7ct
        0x7at
        0x3at
        0x63t
        0x7bt
        0x71t
        0x3bt
        0x71t
        0x61t
        0x66t
        0x3bt
        0x7dt
        0x71t
        0x2bt
        0x3ft
        0x2et
        0x23t
        0x25t
        0x65t
        0x3ct
        0x24t
        0x2et
        0x64t
        0x2et
        0x3et
        0x39t
        0x64t
        0x22t
        0x2et
        0x71t
        0x3at
        0x38t
        0x25t
        0x2ct
        0x23t
        0x26t
        0x2ft
        0x77t
        0x26t
        0x28t
        0x38t
        0x64t
        0x70t
        0x61t
        0x6ct
        0x6at
        0x2at
        0x73t
        0x6bt
        0x61t
        0x2bt
        0x61t
        0x71t
        0x76t
        0x2bt
        0x70t
        0x6dt
        0x61t
        0x3et
        0x75t
        0x77t
        0x6at
        0x63t
        0x6ct
        0x69t
        0x60t
        0x38t
        0x75t
        0x37t
        0x8t
        0x1ct
        0xdt
        0x0t
        0x6t
        0x46t
        0x1ft
        0x6t
        0x1bt
        0xbt
        0x0t
        0x1at
        0x34t
        0x20t
        0x31t
        0x3ct
        0x3at
        0x7at
        0x22t
        0x34t
        0x23t
        0x68t
        0x7ct
        0x6dt
        0x60t
        0x66t
        0x26t
        0x71t
        0x24t
        0x6ft
        0x65t
        0x68t
        0x6at
        0x1bt
        0xft
        0x1et
        0x13t
        0x15t
        0x55t
        0x2t
        0x57t
        0xdt
        0x1bt
        0xct
        0xbt
        0x1ct
        0x5at
        0x5bt
        0x43t
        0x54t
        0x41t
        0x13t
        0x36t
        0x21t
        0x34t
        0x64t
        0x7t
        0x1t
        0x5t
        0x52t
        0x54t
        0x5ct
        0x7t
        0x1t
        0x5t
        0x53t
        0x54t
        0x5ct
        0x5dt
        0x51t
        0x5at
        0x5bt
        0x5dt
        0x6et
        0x4ct
        0x5bt
        0x58t
        0x57t
        0x46t
        0x22t
        0x27t
        0x25t
        0x75t
        0x57t
        0x52t
        0x50t
        0x7t
        0x7ct
        0x7dt
        0x7bt
        0x2bt
        0x40t
        0x50t
        0x57t
        0x47t
        0x72t
        0x62t
        0x65t
        0x73t
        0x27t
        0x37t
        0x30t
        0x2bt
        0x39t
        0x29t
        0x2et
        0x31t
        0x55t
        0x45t
        0x42t
        0x49t
        0x74t
        0x66t
        0x71t
        0x21t
        0x2t
        0x10t
        0x7t
        0x10t
        0x1t
        0x13t
        0xdt
        0x54t
        0x72t
        0x60t
        0x7et
        0x73t
        0x5dt
        0x5bt
        0x13t
        0xbt
        0x23t
        0x25t
        0x6bt
        0x75t
        0x47t
        0x4bt
        0x43t
        0x14t
        0x12t
        0x1at
        0x1ct
        0x16t
        0x1bt
        0x19t
        0x37t
        0x3at
        0x29t
        0x6et
        0x36t
        0x28t
        0x3dt
        0x6ft
        0x21t
        0x25t
        0x29t
        0x2ft
        0x2dt
        0xat
        0xet
        0x2t
        0x4t
        0x6t
        0x4ct
        0x9t
        0x13t
        0x6t
        0x4t
        0x18t
        0x1dt
        0x14t
        0x44t
        0x1et
        0x1bt
        0x1et
        0x42t
        0x5bt
        0x5ft
        0x5bt
        0x53t
        0x62t
        0x4ft
        0x46t
        0x53t
        0x5bt
        0x46t
        0x2t
        0x57t
        0x59t
        0x44t
        0x0t
        0x55t
        0x1at
        0x3ft
        0x20t
        0x25t
        0x23t
        0x22t
        0x25t
        0x21t
        0x21t
        0x23t
        0x32t
        0x2ft
        0x23t
        0x47t
        0x56t
        0x4bt
        0x47t
        0x1ct
        0x45t
        0x47t
        0x47t
        0x7ct
        0x63t
        0x6et
        0x6ft
        0x65t
        0x12t
        0xdt
        0x0t
        0x1t
        0xbt
        0x4bt
        0x5t
        0x12t
        0x54t
        0x55t
        0x65t
        0x7at
        0x77t
        0x76t
        0x7ct
        0x3ct
        0x72t
        0x65t
        0x70t
        0x40t
        0x5ft
        0x52t
        0x53t
        0x59t
        0x19t
        0x52t
        0x59t
        0x5at
        0x54t
        0x4ft
        0x1bt
        0x40t
        0x5ft
        0x45t
        0x5ft
        0x59t
        0x58t
        0x1t
        0x1et
        0x13t
        0x12t
        0x18t
        0x58t
        0x1ft
        0x12t
        0x1t
        0x14t
        0x15t
        0xat
        0x7t
        0x6t
        0xct
        0x4ct
        0xet
        0x13t
        0x57t
        0x15t
        0x4et
        0x6t
        0x10t
        0x4at
        0x55t
        0x58t
        0x59t
        0x53t
        0x13t
        0x51t
        0x4ct
        0x59t
        0x5bt
        0x7ft
        0x60t
        0x6dt
        0x6ct
        0x66t
        0x26t
        0x64t
        0x79t
        0x6ct
        0x6et
        0x3bt
        0x60t
        0x7ft
        0x72t
        0x73t
        0x79t
        0x39t
        0x61t
        0x60t
        0x75t
        0x27t
        0x42t
        0x5dt
        0x50t
        0x51t
        0x5bt
        0x1bt
        0x4ct
        0x19t
        0x42t
        0x5at
        0x50t
        0x1at
        0x5bt
        0x5at
        0x6t
        0x1at
        0x42t
        0x44t
        0xct
        0x2ct
        0x33t
        0x3et
        0x3ft
        0x35t
        0x75t
        0x22t
        0x77t
        0x2ct
        0x34t
        0x3et
        0x74t
        0x35t
        0x34t
        0x68t
        0x74t
        0x2ct
        0x2at
        0x63t
        0x1ct
        0x5t
        0x18t
        0x8t
        0x3t
        0x19t
        0x6ct
        0x6at
        0x2at
        0x22t
        0x4et
        0x48t
        0x8t
        0x1t
        0x28t
        0x2et
        0x66t
        0xbt
        0xdt
        0x44t
        0x33t
        0x32t
        0x30t
        0x30t
    .end array-data
.end method

.method public static A0C(Ljava/lang/String;)Z
    .locals 3

    .line 10307
    const/16 v2, 0x179

    const/4 v1, 0x5

    const/16 v0, 0xb

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/2h;->A0A(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static A0D(Ljava/lang/String;)Z
    .locals 3

    .line 10308
    const/16 v2, 0x32e

    const/4 v1, 0x5

    const/16 v0, 0x6d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/2h;->A0A(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10309
    const/16 v2, 0xdd

    const/16 v1, 0x17

    const/16 v0, 0x79

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 10310
    :goto_0
    return v0

    .line 10311
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A0E(Ljava/lang/String;)Z
    .locals 4

    .line 10312
    const/16 v2, 0x35e

    const/4 v1, 0x4

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/2h;->A0A(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10313
    const/16 v2, 0x33

    const/16 v1, 0x13

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10314
    const/16 v2, 0x46

    const/16 v1, 0x13

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10315
    const/16 v2, 0xf4

    const/16 v1, 0x19

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10316
    const/16 v2, 0x165

    const/16 v1, 0x14

    const/16 v0, 0x7d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10317
    const/16 v3, 0x8a

    sget-object v2, Lcom/facebook/ads/redexgen/X/2h;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/2h;->A01:[Ljava/lang/String;

    const-string v1, "uN"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const/16 v1, 0x14

    const/16 v0, 0x22

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10318
    const/16 v2, 0x122

    const/16 v1, 0x1c

    const/16 v0, 0x79

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10319
    const/16 v2, 0x10d

    const/16 v1, 0x15

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10320
    const/16 v2, 0x13e

    const/16 v1, 0x13

    const/16 v0, 0x22

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10321
    const/16 v2, 0x9e

    const/16 v1, 0x12

    const/16 v0, 0x9

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10322
    const/16 v2, 0x7b

    const/16 v1, 0xf

    const/16 v0, 0x3f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10323
    const/16 v2, 0x59

    const/16 v1, 0x13

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 10324
    :goto_0
    return v0

    .line 10325
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A0F(Ljava/lang/String;)Z
    .locals 3

    .line 10326
    const/16 v2, 0x36a

    const/4 v1, 0x5

    const/16 v0, 0x2f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/2h;->A0A(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static A0G(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .line 10327
    const/4 v5, 0x0

    if-nez p0, :cond_0

    .line 10328
    return v5

    .line 10329
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v4, 0x1

    sparse-switch v0, :sswitch_data_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 10330
    return v5

    .line 10331
    :sswitch_0
    const/16 v2, 0x1c1

    const/16 v1, 0xf

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_1
    const/16 v2, 0x1b2

    const/16 v1, 0xf

    const/16 v0, 0x53

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_2
    const/16 v2, 0x1fc

    const/16 v1, 0xa

    const/16 v0, 0x71

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_3
    const/16 v2, 0x1a8

    const/16 v1, 0xa

    const/4 v0, 0x2

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_4
    const/16 v2, 0x190

    const/16 v1, 0xa

    const/16 v0, 0x7e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    goto :goto_0

    :sswitch_5
    const/16 v2, 0x22a

    const/16 v1, 0x9

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_6
    const/16 v3, 0x17e

    sget-object v2, Lcom/facebook/ads/redexgen/X/2h;->A01:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/2h;->A01:[Ljava/lang/String;

    const-string v1, "7TZi0YNdbKzS3YWl27UD3YdF"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "fIx4E556Fk4RSg"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const/16 v1, 0x9

    const/16 v0, 0x1b

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x7

    goto/16 :goto_0

    :sswitch_7
    const/16 v2, 0x1ed

    const/16 v1, 0xf

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xa

    goto/16 :goto_0

    :sswitch_8
    const/16 v2, 0x213

    const/16 v1, 0xd

    const/16 v0, 0xe

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto/16 :goto_0

    :sswitch_9
    const/16 v2, 0x206

    const/16 v1, 0xd

    const/16 v0, 0x39

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_a
    const/16 v2, 0x19a

    const/16 v1, 0xe

    const/16 v0, 0x4c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x9

    goto/16 :goto_0

    .line 10332
    :pswitch_0
    if-nez p1, :cond_2

    .line 10333
    return v5

    .line 10334
    :cond_2
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/2h;->A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2g;

    move-result-object v0

    .line 10335
    .local v1, "objectType":Lcom/facebook/ads/redexgen/X/2g;
    if-nez v0, :cond_3

    .line 10336
    return v5

    .line 10337
    :cond_3
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2g;->A00()I

    move-result v1

    .line 10338
    .local v3, "encoding":I
    if-eqz v1, :cond_4

    const/16 v0, 0x10

    if-eq v1, v0, :cond_4

    const/4 v5, 0x1

    :cond_4
    return v5

    .line 10339
    .end local v1    # "objectType":Lcom/facebook/ads/redexgen/X/2g;
    .end local v3    # "encoding":I
    :pswitch_1
    return v4

    .line 10340
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7e929daa -> :sswitch_a
        -0x19cc928c -> :sswitch_9
        -0x19cc928b -> :sswitch_8
        -0x3313c2e -> :sswitch_7
        0xb269698 -> :sswitch_6
        0xb26d66f -> :sswitch_5
        0x59ae0c65 -> :sswitch_4
        0x59aeaa01 -> :sswitch_3
        0x59b1e81e -> :sswitch_2
        0x71710385 -> :sswitch_1
        0x717677f9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
