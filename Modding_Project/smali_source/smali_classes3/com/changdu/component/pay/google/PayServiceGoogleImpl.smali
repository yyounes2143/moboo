.class public final Lcom/changdu/component/pay/google/PayServiceGoogleImpl;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/changdu/component/pay/base/service/IPayServiceGoogle;


# annotations
.annotation build Lcom/didi/drouter/annotation/Service;
    cache = 0x2
    function = {
        Lcom/changdu/component/pay/base/service/IPayServiceGoogle;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016J\u0008\u0010\t\u001a\u00020\u0006H\u0016J\u001a\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J\u0018\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u00082\u0006\u0010\u0011\u001a\u00020\u0008H\u0016J\u0008\u0010\u0012\u001a\u00020\u0006H\u0016J*\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0004H\u0016J@\u0010\u001b\u001a\u00020\u00062\u0016\u0010\u001c\u001a\u0012\u0012\u0004\u0012\u00020\u00080\u001dj\u0008\u0012\u0004\u0012\u00020\u0008`\u001e2\u0016\u0010\u001f\u001a\u0012\u0012\u0004\u0012\u00020\u00080\u001dj\u0008\u0012\u0004\u0012\u00020\u0008`\u001e2\u0006\u0010 \u001a\u00020!H\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""
    }
    d2 = {
        "Lcom/changdu/component/pay/google/PayServiceGoogleImpl;",
        "Lcom/changdu/component/pay/base/service/IPayServiceGoogle;",
        "()V",
        "mPayCallback",
        "Lcom/changdu/component/pay/base/IPayCallback;",
        "checkPayStatus",
        "",
        "getCountryCode",
        "",
        "handleCallbackCancel",
        "handleCallbackFailed",
        "errorCode",
        "",
        "payReportMessage",
        "Lcom/changdu/component/pay/base/model/PayReportMessage;",
        "handleCallbackSuccess",
        "cdOrderId",
        "playOrderId",
        "init",
        "pay",
        "activity",
        "Landroid/app/Activity;",
        "payRequestItem",
        "Lcom/changdu/component/pay/base/model/PayRequestItem;",
        "payCreateOrderResult",
        "Lcom/changdu/component/pay/base/model/PayCreateOrderResult;",
        "payCallback",
        "requestPurchaseMonetization",
        "inappItemIdList",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "subsItemIdList",
        "listener",
        "Lcom/changdu/component/pay/base/service/OnPurchaseMonetizationListener;",
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


# instance fields
.field private mPayCallback:Lcom/changdu/component/pay/base/IPayCallback;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public checkPayStatus()V
    .locals 2

    .line 1
    sget-object v0, Lcom/changdu/component/pay/google/x;->f:Lcom/changdu/component/pay/google/d;

    .line 2
    .line 3
    sget-object v1, Lcom/changdu/component/core/CDComponent;->context:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/changdu/component/pay/google/d;->a(Landroid/content/Context;)Lcom/changdu/component/pay/google/x;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/changdu/component/pay/google/x;->a()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/changdu/component/pay/google/x;->f:Lcom/changdu/component/pay/google/d;

    .line 2
    .line 3
    sget-object v1, Lcom/changdu/component/core/CDComponent;->context:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/changdu/component/pay/google/d;->a(Landroid/content/Context;)Lcom/changdu/component/pay/google/x;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v0, v0, Lcom/changdu/component/pay/google/x;->e:Ljava/lang/String;

    .line 14
    .line 15
    return-object v0
.end method

.method public handleCallbackCancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/changdu/component/pay/google/PayServiceGoogleImpl;->mPayCallback:Lcom/changdu/component/pay/base/IPayCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/changdu/component/pay/base/IPayCallback;->cancel()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/changdu/component/pay/google/PayServiceGoogleImpl;->mPayCallback:Lcom/changdu/component/pay/base/IPayCallback;

    .line 10
    .line 11
    return-void
.end method

.method public handleCallbackFailed(ILcom/changdu/component/pay/base/model/PayReportMessage;)V
    .locals 1
    .param p2    # Lcom/changdu/component/pay/base/model/PayReportMessage;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/changdu/component/pay/google/PayServiceGoogleImpl;->mPayCallback:Lcom/changdu/component/pay/base/IPayCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/changdu/component/pay/base/IPayCallback;->failed(ILcom/changdu/component/pay/base/model/PayReportMessage;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lcom/changdu/component/pay/google/PayServiceGoogleImpl;->mPayCallback:Lcom/changdu/component/pay/base/IPayCallback;

    .line 10
    .line 11
    return-void
.end method

.method public handleCallbackSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/changdu/component/pay/google/PayServiceGoogleImpl;->mPayCallback:Lcom/changdu/component/pay/base/IPayCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/changdu/component/pay/base/IPayCallback;->success(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lcom/changdu/component/pay/google/PayServiceGoogleImpl;->mPayCallback:Lcom/changdu/component/pay/base/IPayCallback;

    .line 10
    .line 11
    return-void
.end method

.method public init()V
    .locals 2

    .line 1
    sget-object v0, Lcom/changdu/component/pay/google/x;->f:Lcom/changdu/component/pay/google/d;

    .line 2
    .line 3
    sget-object v1, Lcom/changdu/component/core/CDComponent;->context:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/changdu/component/pay/google/d;->a(Landroid/content/Context;)Lcom/changdu/component/pay/google/x;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/changdu/component/pay/google/x;->b()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public pay(Landroid/app/Activity;Lcom/changdu/component/pay/base/model/PayRequestItem;Lcom/changdu/component/pay/base/model/PayCreateOrderResult;Lcom/changdu/component/pay/base/IPayCallback;)V
    .locals 10
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/changdu/component/pay/base/model/PayRequestItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/changdu/component/pay/base/model/PayCreateOrderResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/changdu/component/pay/base/IPayCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sget v0, Lcom/changdu/component/pay/google/GooglePayActivity;->f:I

    .line 2
    .line 3
    sget v0, Lcom/changdu/component/pay/google/GooglePayActivity;->f:I

    .line 4
    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    if-eqz p4, :cond_c

    .line 8
    .line 9
    new-instance v1, Lcom/changdu/component/pay/base/model/PayReportMessage;

    .line 10
    .line 11
    const/16 v8, 0x3d

    .line 12
    .line 13
    const/4 v9, 0x0

    .line 14
    const/4 v2, 0x0

    .line 15
    const-string v3, "\u8fd8\u6709\u652f\u4ed8\u6b63\u5728\u5904\u7406\u4e2d\uff0c\u6b64\u6b21\u652f\u4ed8\u8bf7\u6c42\u5931\u8d25"

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    const/4 v5, 0x0

    .line 19
    const/4 v6, 0x0

    .line 20
    const/4 v7, 0x0

    .line 21
    invoke-direct/range {v1 .. v9}, Lcom/changdu/component/pay/base/model/PayReportMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 22
    .line 23
    .line 24
    const/16 p1, 0x3ef

    .line 25
    .line 26
    invoke-interface {p4, p1, v1}, Lcom/changdu/component/pay/base/IPayCallback;->failed(ILcom/changdu/component/pay/base/model/PayReportMessage;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    invoke-virtual {p2}, Lcom/changdu/component/pay/base/model/PayRequestItem;->getItemId()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-eqz v0, :cond_b

    .line 35
    .line 36
    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    goto/16 :goto_1

    .line 43
    .line 44
    :cond_1
    invoke-virtual {p3}, Lcom/changdu/component/pay/base/model/PayCreateOrderResult;->getParameter()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    if-eqz v0, :cond_b

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-nez v0, :cond_2

    .line 55
    .line 56
    goto/16 :goto_1

    .line 57
    .line 58
    :cond_2
    invoke-virtual {p3}, Lcom/changdu/component/pay/base/model/PayCreateOrderResult;->getJumpUrl()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    if-eqz v0, :cond_b

    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-nez v0, :cond_3

    .line 69
    .line 70
    goto/16 :goto_1

    .line 71
    .line 72
    :cond_3
    iput-object p4, p0, Lcom/changdu/component/pay/google/PayServiceGoogleImpl;->mPayCallback:Lcom/changdu/component/pay/base/IPayCallback;

    .line 73
    .line 74
    sget p4, Lcom/changdu/component/pay/google/GooglePayActivity;->f:I

    .line 75
    .line 76
    if-lez p4, :cond_4

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_4
    if-eqz p1, :cond_a

    .line 80
    .line 81
    invoke-virtual {p2}, Lcom/changdu/component/pay/base/model/PayRequestItem;->getItemId()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p4

    .line 85
    if-eqz p4, :cond_a

    .line 86
    .line 87
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    .line 88
    .line 89
    .line 90
    move-result p4

    .line 91
    if-nez p4, :cond_5

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_5
    invoke-virtual {p3}, Lcom/changdu/component/pay/base/model/PayCreateOrderResult;->getParameter()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p4

    .line 98
    if-eqz p4, :cond_a

    .line 99
    .line 100
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    .line 101
    .line 102
    .line 103
    move-result p4

    .line 104
    if-nez p4, :cond_6

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_6
    invoke-virtual {p3}, Lcom/changdu/component/pay/base/model/PayCreateOrderResult;->getJumpUrl()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p4

    .line 111
    if-eqz p4, :cond_a

    .line 112
    .line 113
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    .line 114
    .line 115
    .line 116
    move-result p4

    .line 117
    if-nez p4, :cond_7

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_7
    sget-object p4, Lcom/changdu/component/pay/base/PayUtil;->INSTANCE:Lcom/changdu/component/pay/base/PayUtil;

    .line 121
    .line 122
    invoke-virtual {p4, p2}, Lcom/changdu/component/pay/base/PayUtil;->toJsonStr(Ljava/lang/Object;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    invoke-virtual {p4, p3}, Lcom/changdu/component/pay/base/PayUtil;->toJsonStr(Ljava/lang/Object;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p3

    .line 130
    if-eqz p2, :cond_a

    .line 131
    .line 132
    invoke-static {p2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 133
    .line 134
    .line 135
    move-result p4

    .line 136
    if-eqz p4, :cond_8

    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_8
    if-eqz p3, :cond_a

    .line 140
    .line 141
    invoke-static {p3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 142
    .line 143
    .line 144
    move-result p4

    .line 145
    if-eqz p4, :cond_9

    .line 146
    .line 147
    goto :goto_0

    .line 148
    :cond_9
    new-instance p4, Landroid/content/Intent;

    .line 149
    .line 150
    const-class v0, Lcom/changdu/component/pay/google/GooglePayActivity;

    .line 151
    .line 152
    invoke-direct {p4, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 153
    .line 154
    .line 155
    const-string v0, "payRequestItem"

    .line 156
    .line 157
    invoke-virtual {p4, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    .line 159
    .line 160
    const-string p2, "payCreateOrderResult"

    .line 161
    .line 162
    invoke-virtual {p4, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1, p4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 166
    .line 167
    .line 168
    return-void

    .line 169
    :cond_a
    :goto_0
    new-instance v0, Lcom/changdu/component/pay/base/model/PayReportMessage;

    .line 170
    .line 171
    const/16 v7, 0x3d

    .line 172
    .line 173
    const/4 v8, 0x0

    .line 174
    const/4 v1, 0x0

    .line 175
    const-string v2, "\u542f\u52a8Google\u652f\u4ed8\u9875\u5931\u8d25"

    .line 176
    .line 177
    const/4 v3, 0x0

    .line 178
    const/4 v4, 0x0

    .line 179
    const/4 v5, 0x0

    .line 180
    const/4 v6, 0x0

    .line 181
    invoke-direct/range {v0 .. v8}, Lcom/changdu/component/pay/base/model/PayReportMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 182
    .line 183
    .line 184
    const/16 p1, 0x3f0

    .line 185
    .line 186
    invoke-virtual {p0, p1, v0}, Lcom/changdu/component/pay/google/PayServiceGoogleImpl;->handleCallbackFailed(ILcom/changdu/component/pay/base/model/PayReportMessage;)V

    .line 187
    .line 188
    .line 189
    return-void

    .line 190
    :cond_b
    :goto_1
    if-eqz p4, :cond_c

    .line 191
    .line 192
    new-instance v1, Lcom/changdu/component/pay/base/model/PayReportMessage;

    .line 193
    .line 194
    const/16 v8, 0x3d

    .line 195
    .line 196
    const/4 v9, 0x0

    .line 197
    const/4 v2, 0x0

    .line 198
    const-string v3, "\u53c2\u6570\u4e0d\u5408\u6cd5\uff0c\u6b64\u6b21\u652f\u4ed8\u8bf7\u6c42\u5931\u8d25"

    .line 199
    .line 200
    const/4 v4, 0x0

    .line 201
    const/4 v5, 0x0

    .line 202
    const/4 v6, 0x0

    .line 203
    const/4 v7, 0x0

    .line 204
    invoke-direct/range {v1 .. v9}, Lcom/changdu/component/pay/base/model/PayReportMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 205
    .line 206
    .line 207
    const/16 p1, 0x3ea

    .line 208
    .line 209
    invoke-interface {p4, p1, v1}, Lcom/changdu/component/pay/base/IPayCallback;->failed(ILcom/changdu/component/pay/base/model/PayReportMessage;)V

    .line 210
    .line 211
    .line 212
    :cond_c
    return-void
.end method

.method public requestPurchaseMonetization(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/changdu/component/pay/base/service/OnPurchaseMonetizationListener;)V
    .locals 7
    .param p1    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/changdu/component/pay/base/service/OnPurchaseMonetizationListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/changdu/component/pay/base/service/OnPurchaseMonetizationListener;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/changdu/component/pay/base/PayUtil;->INSTANCE:Lcom/changdu/component/pay/base/PayUtil;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/changdu/component/pay/base/PayUtil;->getMainLoaderScope()Lkotlinx/coroutines/CoroutineScope;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance v4, Lcom/changdu/component/pay/google/c;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-direct {v4, p1, p2, p3, v0}, Lcom/changdu/component/pay/google/c;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/changdu/component/pay/base/service/OnPurchaseMonetizationListener;Lkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    const/4 v5, 0x3

    .line 14
    const/4 v6, 0x0

    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 18
    .line 19
    .line 20
    return-void
.end method
