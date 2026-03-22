.class public final Lcom/changdu/component/pay/google/GooglePayActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "Proguard"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/changdu/component/pay/google/GooglePayActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "<init>",
        "()V",
        "pay-google_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static volatile f:I


# instance fields
.field public a:Z

.field public final b:Lcom/changdu/component/pay/google/a;

.field public c:Lcom/changdu/component/pay/google/x;

.field public d:Lcom/changdu/component/pay/base/model/PayRequestItem;

.field public e:Lcom/changdu/component/pay/base/model/PayCreateOrderResult;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/changdu/component/pay/google/a;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/changdu/component/pay/google/a;-><init>(Lcom/changdu/component/pay/google/GooglePayActivity;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/changdu/component/pay/google/GooglePayActivity;->b:Lcom/changdu/component/pay/google/a;

    .line 10
    .line 11
    return-void
.end method

.method public static final synthetic a(Lcom/changdu/component/pay/google/GooglePayActivity;)Lcom/changdu/component/pay/base/model/PayCreateOrderResult;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/changdu/component/pay/google/GooglePayActivity;->e:Lcom/changdu/component/pay/base/model/PayCreateOrderResult;

    return-object p0
.end method

.method public static final synthetic a(Lcom/changdu/component/pay/google/GooglePayActivity;ILcom/changdu/component/pay/base/model/PayReportMessage;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/changdu/component/pay/google/GooglePayActivity;->a(ILcom/changdu/component/pay/base/model/PayReportMessage;)V

    return-void
.end method

.method public static final a(Lcom/changdu/component/pay/google/GooglePayActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 3
    sget-object v0, Lcom/changdu/component/pay/base/CDPay;->INSTANCE:Lcom/changdu/component/pay/base/CDPay;

    invoke-virtual {v0}, Lcom/changdu/component/pay/base/CDPay;->getGooglePayService()Lcom/changdu/component/pay/base/service/IPayServiceGoogle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/changdu/component/pay/base/service/IPayServiceGoogle;->handleCallbackSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public static final synthetic b(Lcom/changdu/component/pay/google/GooglePayActivity;)Lcom/changdu/component/pay/base/model/PayRequestItem;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/changdu/component/pay/google/GooglePayActivity;->d:Lcom/changdu/component/pay/base/model/PayRequestItem;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final c(Lcom/changdu/component/pay/google/GooglePayActivity;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/changdu/component/pay/base/CDPay;->INSTANCE:Lcom/changdu/component/pay/base/CDPay;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/changdu/component/pay/base/CDPay;->getGooglePayService()Lcom/changdu/component/pay/base/service/IPayServiceGoogle;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/changdu/component/pay/base/service/IPayServiceGoogle;->handleCallbackCancel()V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final a(ILcom/changdu/component/pay/base/model/PayReportMessage;)V
    .locals 1

    .line 5
    sget-object v0, Lcom/changdu/component/pay/base/CDPay;->INSTANCE:Lcom/changdu/component/pay/base/CDPay;

    invoke-virtual {v0}, Lcom/changdu/component/pay/base/CDPay;->getGooglePayService()Lcom/changdu/component/pay/base/service/IPayServiceGoogle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/changdu/component/pay/base/service/IPayServiceGoogle;->handleCallbackFailed(ILcom/changdu/component/pay/base/model/PayReportMessage;)V

    .line 6
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final finish()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onBackPressed()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 13

    .line 1
    sget v0, Lcom/changdu/component/pay/google/GooglePayActivity;->f:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    add-int/2addr v0, v1

    .line 5
    sput v0, Lcom/changdu/component/pay/google/GooglePayActivity;->f:I

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    .line 12
    .line 13
    const-string v3, "#00000000"

    .line 14
    .line 15
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 23
    .line 24
    .line 25
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    .line 27
    .line 28
    sget p1, Lcom/changdu/component/pay/google/GooglePayActivity;->f:I

    .line 29
    .line 30
    if-le p1, v1, :cond_0

    .line 31
    .line 32
    new-instance v2, Lcom/changdu/component/pay/base/model/PayReportMessage;

    .line 33
    .line 34
    const/16 v9, 0x3d

    .line 35
    .line 36
    const/4 v10, 0x0

    .line 37
    const/4 v3, 0x0

    .line 38
    const-string v4, "\u8fd8\u6709\u652f\u4ed8\u6b63\u5728\u5904\u7406\u4e2d\uff0c\u6b64\u6b21\u652f\u4ed8\u8bf7\u6c42\u5931\u8d25\uff0c\u76f4\u63a5\u5173\u95edactivity"

    .line 39
    .line 40
    const/4 v5, 0x0

    .line 41
    const/4 v6, 0x0

    .line 42
    const/4 v7, 0x0

    .line 43
    const/4 v8, 0x0

    .line 44
    invoke-direct/range {v2 .. v10}, Lcom/changdu/component/pay/base/model/PayReportMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 45
    .line 46
    .line 47
    const/16 p1, 0x3ef

    .line 48
    .line 49
    invoke-virtual {p0, p1, v2}, Lcom/changdu/component/pay/google/GooglePayActivity;->a(ILcom/changdu/component/pay/base/model/PayReportMessage;)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    const/16 v0, 0x3ea

    .line 58
    .line 59
    if-nez p1, :cond_1

    .line 60
    .line 61
    new-instance v1, Lcom/changdu/component/pay/base/model/PayReportMessage;

    .line 62
    .line 63
    const/16 v8, 0x3d

    .line 64
    .line 65
    const/4 v9, 0x0

    .line 66
    const/4 v2, 0x0

    .line 67
    const-string v3, "\u542f\u52a8Google\u652f\u6301\u9875\u65f6\u65e0\u6709\u6548\u7684intent"

    .line 68
    .line 69
    const/4 v4, 0x0

    .line 70
    const/4 v5, 0x0

    .line 71
    const/4 v6, 0x0

    .line 72
    const/4 v7, 0x0

    .line 73
    invoke-direct/range {v1 .. v9}, Lcom/changdu/component/pay/base/model/PayReportMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, v0, v1}, Lcom/changdu/component/pay/google/GooglePayActivity;->a(ILcom/changdu/component/pay/base/model/PayReportMessage;)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    const-string v1, "payRequestItem"

    .line 85
    .line 86
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    const-string v1, ""

    .line 91
    .line 92
    if-nez p1, :cond_2

    .line 93
    .line 94
    move-object p1, v1

    .line 95
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    const-string v3, "payCreateOrderResult"

    .line 100
    .line 101
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    if-nez v2, :cond_3

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_3
    move-object v1, v2

    .line 109
    :goto_0
    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    const-string v3, "\npayCreateOrderResult: "

    .line 114
    .line 115
    const-string v4, "payRequestItem: "

    .line 116
    .line 117
    if-nez v2, :cond_4

    .line 118
    .line 119
    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    if-eqz v2, :cond_5

    .line 124
    .line 125
    :cond_4
    move-object v2, v3

    .line 126
    move-object v3, v4

    .line 127
    goto/16 :goto_3

    .line 128
    .line 129
    :cond_5
    sget-object v2, Lcom/changdu/component/pay/base/PayUtil;->INSTANCE:Lcom/changdu/component/pay/base/PayUtil;

    .line 130
    .line 131
    const-class v5, Lcom/changdu/component/pay/base/model/PayRequestItem;

    .line 132
    .line 133
    invoke-virtual {v2, p1, v5}, Lcom/changdu/component/pay/base/PayUtil;->fromJsonStr(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    check-cast v5, Lcom/changdu/component/pay/base/model/PayRequestItem;

    .line 138
    .line 139
    const-class v6, Lcom/changdu/component/pay/base/model/PayCreateOrderResult;

    .line 140
    .line 141
    invoke-virtual {v2, v1, v6}, Lcom/changdu/component/pay/base/PayUtil;->fromJsonStr(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    check-cast v2, Lcom/changdu/component/pay/base/model/PayCreateOrderResult;

    .line 146
    .line 147
    if-eqz v5, :cond_6

    .line 148
    .line 149
    if-nez v2, :cond_7

    .line 150
    .line 151
    :cond_6
    move-object v2, v3

    .line 152
    goto :goto_2

    .line 153
    :cond_7
    iput-object v5, p0, Lcom/changdu/component/pay/google/GooglePayActivity;->d:Lcom/changdu/component/pay/base/model/PayRequestItem;

    .line 154
    .line 155
    iput-object v2, p0, Lcom/changdu/component/pay/google/GooglePayActivity;->e:Lcom/changdu/component/pay/base/model/PayCreateOrderResult;

    .line 156
    .line 157
    invoke-virtual {v5}, Lcom/changdu/component/pay/base/model/PayRequestItem;->getItemId()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v5

    .line 161
    if-eqz v5, :cond_b

    .line 162
    .line 163
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 164
    .line 165
    .line 166
    move-result v5

    .line 167
    if-nez v5, :cond_8

    .line 168
    .line 169
    goto :goto_1

    .line 170
    :cond_8
    invoke-virtual {v2}, Lcom/changdu/component/pay/base/model/PayCreateOrderResult;->getParameter()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v5

    .line 174
    if-eqz v5, :cond_b

    .line 175
    .line 176
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 177
    .line 178
    .line 179
    move-result v5

    .line 180
    if-nez v5, :cond_9

    .line 181
    .line 182
    goto :goto_1

    .line 183
    :cond_9
    invoke-virtual {v2}, Lcom/changdu/component/pay/base/model/PayCreateOrderResult;->getJumpUrl()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    if-eqz v2, :cond_b

    .line 188
    .line 189
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 190
    .line 191
    .line 192
    move-result v2

    .line 193
    if-nez v2, :cond_a

    .line 194
    .line 195
    goto :goto_1

    .line 196
    :cond_a
    sget-object p1, Lcom/changdu/component/pay/google/x;->f:Lcom/changdu/component/pay/google/d;

    .line 197
    .line 198
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    invoke-virtual {p1, v0}, Lcom/changdu/component/pay/google/d;->a(Landroid/content/Context;)Lcom/changdu/component/pay/google/x;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    iput-object p1, p0, Lcom/changdu/component/pay/google/GooglePayActivity;->c:Lcom/changdu/component/pay/google/x;

    .line 207
    .line 208
    iget-object v0, p0, Lcom/changdu/component/pay/google/GooglePayActivity;->b:Lcom/changdu/component/pay/google/a;

    .line 209
    .line 210
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 211
    .line 212
    .line 213
    move-result v1

    .line 214
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    invoke-virtual {p1, v0, v1}, Lcom/changdu/component/pay/google/x;->a(Lcom/changdu/component/pay/google/a;Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    return-void

    .line 222
    :cond_b
    :goto_1
    new-instance v2, Lcom/changdu/component/pay/base/model/PayReportMessage;

    .line 223
    .line 224
    new-instance v5, Ljava/lang/StringBuilder;

    .line 225
    .line 226
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v5

    .line 245
    const/16 v9, 0x39

    .line 246
    .line 247
    const/4 v10, 0x0

    .line 248
    const/4 v3, 0x0

    .line 249
    const-string v4, "GooglePlay \u652f\u4ed8\u5931\u8d25\uff0c\u8bf7\u6c42\u53c2\u6570\u4e1a\u52a1\u9519\u8bef"

    .line 250
    .line 251
    const/4 v6, 0x0

    .line 252
    const/4 v7, 0x0

    .line 253
    const/4 v8, 0x0

    .line 254
    invoke-direct/range {v2 .. v10}, Lcom/changdu/component/pay/base/model/PayReportMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {p0, v0, v2}, Lcom/changdu/component/pay/google/GooglePayActivity;->a(ILcom/changdu/component/pay/base/model/PayReportMessage;)V

    .line 258
    .line 259
    .line 260
    return-void

    .line 261
    :goto_2
    new-instance v3, Lcom/changdu/component/pay/base/model/PayReportMessage;

    .line 262
    .line 263
    new-instance v5, Ljava/lang/StringBuilder;

    .line 264
    .line 265
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v6

    .line 284
    const/16 v10, 0x39

    .line 285
    .line 286
    const/4 v11, 0x0

    .line 287
    const/4 v4, 0x0

    .line 288
    const-string v5, "GooglePlay \u652f\u4ed8\u5931\u8d25\uff0c\u8bf7\u6c42\u53c2\u6570\u8f6c\u6362\u4e3ajson\u9519\u8bef"

    .line 289
    .line 290
    const/4 v7, 0x0

    .line 291
    const/4 v8, 0x0

    .line 292
    const/4 v9, 0x0

    .line 293
    invoke-direct/range {v3 .. v11}, Lcom/changdu/component/pay/base/model/PayReportMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {p0, v0, v3}, Lcom/changdu/component/pay/google/GooglePayActivity;->a(ILcom/changdu/component/pay/base/model/PayReportMessage;)V

    .line 297
    .line 298
    .line 299
    return-void

    .line 300
    :goto_3
    new-instance v4, Lcom/changdu/component/pay/base/model/PayReportMessage;

    .line 301
    .line 302
    new-instance v5, Ljava/lang/StringBuilder;

    .line 303
    .line 304
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v7

    .line 323
    const/16 v11, 0x39

    .line 324
    .line 325
    const/4 v12, 0x0

    .line 326
    const/4 v5, 0x0

    .line 327
    const-string v6, "GooglePlay \u652f\u4ed8\u5931\u8d25\uff0c\u8bf7\u6c42\u53c2\u6570\u5165\u53e3\u9519\u8bef"

    .line 328
    .line 329
    const/4 v8, 0x0

    .line 330
    const/4 v9, 0x0

    .line 331
    const/4 v10, 0x0

    .line 332
    invoke-direct/range {v4 .. v12}, Lcom/changdu/component/pay/base/model/PayReportMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 333
    .line 334
    .line 335
    invoke-virtual {p0, v0, v4}, Lcom/changdu/component/pay/google/GooglePayActivity;->a(ILcom/changdu/component/pay/base/model/PayReportMessage;)V

    .line 336
    .line 337
    .line 338
    return-void
.end method

.method public final onDestroy()V
    .locals 3

    .line 1
    sget v0, Lcom/changdu/component/pay/google/GooglePayActivity;->f:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0x1

    .line 4
    .line 5
    sput v0, Lcom/changdu/component/pay/google/GooglePayActivity;->f:I

    .line 6
    .line 7
    sget v0, Lcom/changdu/component/pay/google/GooglePayActivity;->f:I

    .line 8
    .line 9
    if-gez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    sput v0, Lcom/changdu/component/pay/google/GooglePayActivity;->f:I

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/changdu/component/pay/google/GooglePayActivity;->c:Lcom/changdu/component/pay/google/x;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iget-object v2, v0, Lcom/changdu/component/pay/google/x;->b:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    iput-object v1, v0, Lcom/changdu/component/pay/google/x;->c:Lcom/changdu/component/pay/google/a;

    .line 36
    .line 37
    const-string v1, ""

    .line 38
    .line 39
    iput-object v1, v0, Lcom/changdu/component/pay/google/x;->b:Ljava/lang/String;

    .line 40
    .line 41
    :cond_1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final onPause()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 3
    .line 4
    .line 5
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
