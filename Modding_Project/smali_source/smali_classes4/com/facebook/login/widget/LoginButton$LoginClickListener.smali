.class public Lcom/facebook/login/widget/LoginButton$LoginClickListener;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/login/widget/LoginButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LoginClickListener"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0095\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0006H\u0004\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\r\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u000bH\u0004\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0014\u00a2\u0006\u0004\u0008\u0010\u0010\u0011R\u0014\u0010\u0015\u001a\u00020\u00128DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0019\u001a\u00020\u00168DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/facebook/login/widget/LoginButton$LoginClickListener;",
        "Landroid/view/View$OnClickListener;",
        "<init>",
        "(Lcom/facebook/login/widget/LoginButton;)V",
        "Landroid/view/View;",
        "v",
        "",
        "onClick",
        "(Landroid/view/View;)V",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "()V",
        "Landroid/content/Context;",
        "context",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Landroid/content/Context;)V",
        "Lcom/facebook/login/LoginManager;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "()Lcom/facebook/login/LoginManager;",
        "Lcom/facebook/login/LoginTargetApp;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "()Lcom/facebook/login/LoginTargetApp;",
        "loginTargetApp",
        "",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "()Z",
        "isFamilyLogin",
        "facebook-login_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/login/widget/LoginButton;


# direct methods
.method public constructor <init>(Lcom/facebook/login/widget/LoginButton;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/login/widget/LoginButton;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static final Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/login/LoginManager;Landroid/content/DialogInterface;I)V
    .locals 2
    .annotation build Lcom/sensorsdata/analytics/android/sdk/SensorsDataInstrumented;
    .end annotation

    .line 1
    const-class v0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-static {p1, p2}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackDialog(Landroid/content/DialogInterface;I)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/login/LoginManager;->Wwwwwwwwwwww()V

    .line 14
    .line 15
    .line 16
    invoke-static {p1, p2}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackDialog(Landroid/content/DialogInterface;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    invoke-static {p1, p2}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackDialog(Landroid/content/DialogInterface;I)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/login/LoginManager;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/login/LoginManager;Landroid/content/DialogInterface;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;)V
    .locals 9
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/facebook/login/LoginManager;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/login/widget/LoginButton;

    .line 14
    .line 15
    invoke-static {v2}, Lcom/facebook/login/widget/LoginButton;->Wwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/login/widget/LoginButton;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_3

    .line 20
    .line 21
    iget-object v2, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/login/widget/LoginButton;

    .line 22
    .line 23
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    sget v3, Lcom/facebook/login/R$string;->com_facebook_loginview_log_out_action:I

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    iget-object v3, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/login/widget/LoginButton;

    .line 34
    .line 35
    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    sget v4, Lcom/facebook/login/R$string;->com_facebook_loginview_cancel_action:I

    .line 40
    .line 41
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    sget-object v4, Lcom/facebook/Profile;->Companion:Lcom/facebook/Profile$Companion;

    .line 46
    .line 47
    invoke-virtual {v4}, Lcom/facebook/Profile$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/facebook/Profile;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    const/4 v5, 0x0

    .line 52
    if-nez v4, :cond_1

    .line 53
    .line 54
    move-object v6, v5

    .line 55
    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual {v4}, Lcom/facebook/Profile;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    :goto_0
    if-eqz v6, :cond_2

    .line 61
    .line 62
    sget-object v6, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 63
    .line 64
    iget-object v6, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/login/widget/LoginButton;

    .line 65
    .line 66
    invoke-virtual {v6}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    sget v7, Lcom/facebook/login/R$string;->com_facebook_loginview_logged_in_as:I

    .line 71
    .line 72
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    invoke-virtual {v4}, Lcom/facebook/Profile;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    new-array v7, v0, [Ljava/lang/Object;

    .line 81
    .line 82
    const/4 v8, 0x0

    .line 83
    aput-object v4, v7, v8

    .line 84
    .line 85
    invoke-static {v7, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    goto :goto_1

    .line 94
    :catchall_0
    move-exception p1

    .line 95
    goto :goto_2

    .line 96
    :cond_2
    iget-object v4, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/login/widget/LoginButton;

    .line 97
    .line 98
    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    sget v6, Lcom/facebook/login/R$string;->com_facebook_loginview_logged_in_using_facebook:I

    .line 103
    .line 104
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    :goto_1
    new-instance v6, Landroid/app/AlertDialog$Builder;

    .line 109
    .line 110
    invoke-direct {v6, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v6, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    new-instance v0, Lcom/facebook/login/widget/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    .line 122
    .line 123
    invoke-direct {v0, v1}, Lcom/facebook/login/widget/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;-><init>(Lcom/facebook/login/LoginManager;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-virtual {p1, v3, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 138
    .line 139
    .line 140
    return-void

    .line 141
    :cond_3
    invoke-virtual {v1}, Lcom/facebook/login/LoginManager;->Wwwwwwwwwwww()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    .line 143
    .line 144
    return-void

    .line 145
    :goto_2
    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/facebook/login/LoginManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/login/widget/LoginButton;

    .line 13
    .line 14
    invoke-static {v1}, Lcom/facebook/login/widget/LoginButton;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/login/widget/LoginButton;)Landroidx/activity/result/ActivityResultLauncher;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-eqz v1, :cond_2

    .line 19
    .line 20
    invoke-virtual {v1}, Landroidx/activity/result/ActivityResultLauncher;->getContract()Landroidx/activity/result/contract/ActivityResultContract;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lcom/facebook/login/LoginManager$FacebookLoginActivityResultContract;

    .line 25
    .line 26
    iget-object v2, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/login/widget/LoginButton;

    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/facebook/login/widget/LoginButton;->getCallbackManager()Lcom/facebook/CallbackManager;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    if-nez v2, :cond_1

    .line 33
    .line 34
    new-instance v2, Lcom/facebook/internal/CallbackManagerImpl;

    .line 35
    .line 36
    invoke-direct {v2}, Lcom/facebook/internal/CallbackManagerImpl;-><init>()V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception v0

    .line 41
    goto/16 :goto_2

    .line 42
    .line 43
    :cond_1
    :goto_0
    invoke-virtual {v0, v2}, Lcom/facebook/login/LoginManager$FacebookLoginActivityResultContract;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/CallbackManager;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/login/widget/LoginButton;

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/facebook/login/widget/LoginButton;->getProperties()Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v1, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_2
    iget-object v1, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/login/widget/LoginButton;

    .line 61
    .line 62
    invoke-virtual {v1}, Lcom/facebook/FacebookButtonBase;->getFragment()Landroidx/fragment/app/Fragment;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    if-eqz v1, :cond_4

    .line 67
    .line 68
    iget-object v1, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/login/widget/LoginButton;

    .line 69
    .line 70
    invoke-virtual {v1}, Lcom/facebook/FacebookButtonBase;->getFragment()Landroidx/fragment/app/Fragment;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    if-nez v1, :cond_3

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_3
    iget-object v2, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/login/widget/LoginButton;

    .line 78
    .line 79
    invoke-virtual {v2}, Lcom/facebook/login/widget/LoginButton;->getProperties()Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-virtual {v3}, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/List;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    check-cast v3, Ljava/util/Collection;

    .line 88
    .line 89
    invoke-virtual {v2}, Lcom/facebook/login/widget/LoginButton;->getLoggerID()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-virtual {v0, v1, v3, v2}, Lcom/facebook/login/LoginManager;->Wwwwwwwwwwwwww(Landroidx/fragment/app/Fragment;Ljava/util/Collection;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :cond_4
    iget-object v1, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/login/widget/LoginButton;

    .line 98
    .line 99
    invoke-virtual {v1}, Lcom/facebook/FacebookButtonBase;->getNativeFragment()Landroid/app/Fragment;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    if-eqz v1, :cond_6

    .line 104
    .line 105
    iget-object v1, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/login/widget/LoginButton;

    .line 106
    .line 107
    invoke-virtual {v1}, Lcom/facebook/FacebookButtonBase;->getNativeFragment()Landroid/app/Fragment;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    if-nez v1, :cond_5

    .line 112
    .line 113
    :goto_1
    return-void

    .line 114
    :cond_5
    iget-object v2, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/login/widget/LoginButton;

    .line 115
    .line 116
    invoke-virtual {v2}, Lcom/facebook/login/widget/LoginButton;->getProperties()Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    invoke-virtual {v3}, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/List;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    check-cast v3, Ljava/util/Collection;

    .line 125
    .line 126
    invoke-virtual {v2}, Lcom/facebook/login/widget/LoginButton;->getLoggerID()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    invoke-virtual {v0, v1, v3, v2}, Lcom/facebook/login/LoginManager;->Wwwwwwwwwwwwwww(Landroid/app/Fragment;Ljava/util/Collection;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    return-void

    .line 134
    :cond_6
    iget-object v1, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/login/widget/LoginButton;

    .line 135
    .line 136
    invoke-static {v1}, Lcom/facebook/login/widget/LoginButton;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/login/widget/LoginButton;)Landroid/app/Activity;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    iget-object v2, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/login/widget/LoginButton;

    .line 141
    .line 142
    invoke-virtual {v2}, Lcom/facebook/login/widget/LoginButton;->getProperties()Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    invoke-virtual {v2}, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/List;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    check-cast v2, Ljava/util/Collection;

    .line 151
    .line 152
    iget-object v3, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/login/widget/LoginButton;

    .line 153
    .line 154
    invoke-virtual {v3}, Lcom/facebook/login/widget/LoginButton;->getLoggerID()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/login/LoginManager;->Wwwwwwwwwwwwwwww(Landroid/app/Activity;Ljava/util/Collection;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    .line 160
    .line 161
    return-void

    .line 162
    :goto_2
    invoke-static {v0, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    return v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/facebook/login/LoginTargetApp;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    :try_start_0
    sget-object v0, Lcom/facebook/login/LoginTargetApp;->FACEBOOK:Lcom/facebook/login/LoginTargetApp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    return-object v0

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    invoke-static {v0, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-object v1
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/facebook/login/LoginManager;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    :try_start_0
    sget-object v0, Lcom/facebook/login/LoginManager;->Companion:Lcom/facebook/login/LoginManager$Companion;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/facebook/login/LoginManager$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/facebook/login/LoginManager;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v2, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/login/widget/LoginButton;

    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/facebook/login/widget/LoginButton;->getDefaultAudience()Lcom/facebook/login/DefaultAudience;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v0, v2}, Lcom/facebook/login/LoginManager;->Kkkkkkkkkkkkkkkkkkkkkkkk(Lcom/facebook/login/DefaultAudience;)Lcom/facebook/login/LoginManager;

    .line 22
    .line 23
    .line 24
    iget-object v2, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/login/widget/LoginButton;

    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/facebook/login/widget/LoginButton;->getLoginBehavior()Lcom/facebook/login/LoginBehavior;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v0, v2}, Lcom/facebook/login/LoginManager;->Kkkkkkkkkkkkkkkkkkkkk(Lcom/facebook/login/LoginBehavior;)Lcom/facebook/login/LoginManager;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/facebook/login/LoginTargetApp;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v0, v2}, Lcom/facebook/login/LoginManager;->Kkkkkkkkkkkkkkkkkkkk(Lcom/facebook/login/LoginTargetApp;)Lcom/facebook/login/LoginManager;

    .line 38
    .line 39
    .line 40
    iget-object v2, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/login/widget/LoginButton;

    .line 41
    .line 42
    invoke-virtual {v2}, Lcom/facebook/login/widget/LoginButton;->getAuthType()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v0, v2}, Lcom/facebook/login/LoginManager;->Kkkkkkkkkkkkkkkkkkkkkkkkk(Ljava/lang/String;)Lcom/facebook/login/LoginManager;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    invoke-virtual {v0, v2}, Lcom/facebook/login/LoginManager;->Kkkkkkkkkkkkkkkkkkkkkk(Z)Lcom/facebook/login/LoginManager;

    .line 54
    .line 55
    .line 56
    iget-object v2, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/login/widget/LoginButton;

    .line 57
    .line 58
    invoke-virtual {v2}, Lcom/facebook/login/widget/LoginButton;->getShouldSkipAccountDeduplication()Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    invoke-virtual {v0, v2}, Lcom/facebook/login/LoginManager;->Kkkkkkkkkkkkkkkkk(Z)Lcom/facebook/login/LoginManager;

    .line 63
    .line 64
    .line 65
    iget-object v2, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/login/widget/LoginButton;

    .line 66
    .line 67
    invoke-virtual {v2}, Lcom/facebook/login/widget/LoginButton;->getMessengerPageId()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v0, v2}, Lcom/facebook/login/LoginManager;->Kkkkkkkkkkkkkkkkkkk(Ljava/lang/String;)Lcom/facebook/login/LoginManager;

    .line 72
    .line 73
    .line 74
    iget-object v2, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/login/widget/LoginButton;

    .line 75
    .line 76
    invoke-virtual {v2}, Lcom/facebook/login/widget/LoginButton;->getResetMessengerState()Z

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    invoke-virtual {v0, v2}, Lcom/facebook/login/LoginManager;->Kkkkkkkkkkkkkkkkkk(Z)Lcom/facebook/login/LoginManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    .line 82
    .line 83
    return-object v0

    .line 84
    :catchall_0
    move-exception v0

    .line 85
    invoke-static {v0, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    return-object v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lcom/sensorsdata/analytics/android/sdk/SensorsDataInstrumented;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    goto :goto_2

    .line 23
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/login/widget/LoginButton;

    .line 24
    .line 25
    invoke-static {v0, p1}, Lcom/facebook/login/widget/LoginButton;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/login/widget/LoginButton;Landroid/view/View;)V

    .line 26
    .line 27
    .line 28
    sget-object v0, Lcom/facebook/AccessToken;->Companion:Lcom/facebook/AccessToken$Companion;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/facebook/AccessToken$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/facebook/AccessToken;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0}, Lcom/facebook/AccessToken$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    iget-object v2, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/login/widget/LoginButton;

    .line 41
    .line 42
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {p0, v2}, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catchall_1
    move-exception v0

    .line 51
    goto :goto_1

    .line 52
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 53
    .line 54
    .line 55
    :goto_0
    new-instance v2, Lcom/facebook/appevents/InternalAppEventsLogger;

    .line 56
    .line 57
    iget-object v3, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/login/widget/LoginButton;

    .line 58
    .line 59
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-direct {v2, v3}, Lcom/facebook/appevents/InternalAppEventsLogger;-><init>(Landroid/content/Context;)V

    .line 64
    .line 65
    .line 66
    new-instance v3, Landroid/os/Bundle;

    .line 67
    .line 68
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 69
    .line 70
    .line 71
    const-string v4, "logging_in"

    .line 72
    .line 73
    const/4 v5, 0x1

    .line 74
    const/4 v6, 0x0

    .line 75
    if-eqz v1, :cond_3

    .line 76
    .line 77
    move v5, v6

    .line 78
    :cond_3
    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 79
    .line 80
    .line 81
    const-string v1, "access_token_expired"

    .line 82
    .line 83
    invoke-virtual {v3, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 84
    .line 85
    .line 86
    const-string v0, "fb_login_view_usage"

    .line 87
    .line 88
    invoke-virtual {v2, v0, v3}, Lcom/facebook/appevents/InternalAppEventsLogger;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 89
    .line 90
    .line 91
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :goto_1
    :try_start_2
    invoke-static {v0, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :goto_2
    invoke-static {v0, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    .line 106
    .line 107
    .line 108
    return-void
.end method
