.class public Lcom/facebook/login/LoginManager;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/login/LoginManager$FacebookLoginActivityResultContract;,
        Lcom/facebook/login/LoginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate;,
        Lcom/facebook/login/LoginManager$ActivityStartActivityDelegate;,
        Lcom/facebook/login/LoginManager$FragmentStartActivityDelegate;,
        Lcom/facebook/login/LoginManager$LoginLoggerHolder;,
        Lcom/facebook/login/LoginManager$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00e2\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u001e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u001b\u0008\u0016\u0018\u0000 \u0098\u00012\u00020\u0001:\u000c\u0099\u0001\u009a\u0001\u0098\u0001\u009b\u0001\u009c\u0001\u009d\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001f\u0010\t\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ#\u0010\u000e\u001a\u00020\u00082\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\r\u001a\u0004\u0018\u00010\u0006H\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJS\u0010\u0019\u001a\u00020\u00082\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0011\u001a\u00020\u00102\u0014\u0010\u0014\u001a\u0010\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u00122\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0018\u001a\u00020\u00172\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u001f\u0010\u001b\u001a\u00020\u00172\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0017\u0010\u001f\u001a\u00020\u00172\u0006\u0010\u001e\u001a\u00020\u001dH\u0002\u00a2\u0006\u0004\u0008\u001f\u0010 JO\u0010+\u001a\u00020\u00082\u0008\u0010\"\u001a\u0004\u0018\u00010!2\u0008\u0010$\u001a\u0004\u0018\u00010#2\u0008\u0010%\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0016\u001a\u0004\u0018\u00010&2\u0006\u0010\'\u001a\u00020\u00172\u000e\u0010*\u001a\n\u0012\u0004\u0012\u00020)\u0018\u00010(H\u0002\u00a2\u0006\u0004\u0008+\u0010,J\'\u00101\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010.\u001a\u00020-2\u0006\u00100\u001a\u00020/H\u0002\u00a2\u0006\u0004\u00081\u00102J\u0017\u00104\u001a\u00020\u00082\u0006\u00103\u001a\u00020\u0017H\u0002\u00a2\u0006\u0004\u00084\u00105J\'\u00108\u001a\u00020\u00082\u0008\u00107\u001a\u0004\u0018\u0001062\u000e\u0010*\u001a\n\u0012\u0004\u0012\u00020)\u0018\u00010(\u00a2\u0006\u0004\u00088\u00109J3\u0010=\u001a\u00020\u00172\u0006\u0010;\u001a\u00020:2\u0008\u0010<\u001a\u0004\u0018\u00010\u001d2\u0010\u0008\u0002\u0010*\u001a\n\u0012\u0004\u0012\u00020)\u0018\u00010(H\u0017\u00a2\u0006\u0004\u0008=\u0010>J\u0015\u0010A\u001a\u00020\u00002\u0006\u0010@\u001a\u00020?\u00a2\u0006\u0004\u0008A\u0010BJ\u0015\u0010E\u001a\u00020\u00002\u0006\u0010D\u001a\u00020C\u00a2\u0006\u0004\u0008E\u0010FJ\u0015\u0010I\u001a\u00020\u00002\u0006\u0010H\u001a\u00020G\u00a2\u0006\u0004\u0008I\u0010JJ\u0015\u0010L\u001a\u00020\u00002\u0006\u0010K\u001a\u00020\u0013\u00a2\u0006\u0004\u0008L\u0010MJ\u0017\u0010O\u001a\u00020\u00002\u0008\u0010N\u001a\u0004\u0018\u00010\u0013\u00a2\u0006\u0004\u0008O\u0010MJ\u0015\u0010Q\u001a\u00020\u00002\u0006\u0010P\u001a\u00020\u0017\u00a2\u0006\u0004\u0008Q\u0010RJ\u0015\u0010T\u001a\u00020\u00002\u0006\u0010S\u001a\u00020\u0017\u00a2\u0006\u0004\u0008T\u0010RJ\u0015\u0010V\u001a\u00020\u00002\u0006\u0010U\u001a\u00020\u0017\u00a2\u0006\u0004\u0008V\u0010RJ\u000f\u0010W\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008W\u0010\u0003J\u001d\u0010X\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010.\u001a\u00020-\u00a2\u0006\u0004\u0008X\u0010YJ%\u0010Z\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u00100\u001a\u00020/2\u0006\u0010.\u001a\u00020-\u00a2\u0006\u0004\u0008Z\u0010[J/\u0010a\u001a\u00020\u00082\u0006\u0010]\u001a\u00020\\2\u000e\u0010_\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010^2\u0008\u0010`\u001a\u0004\u0018\u00010\u0013\u00a2\u0006\u0004\u0008a\u0010bJ/\u0010d\u001a\u00020\u00082\u0006\u0010]\u001a\u00020c2\u000e\u0010_\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010^2\u0008\u0010`\u001a\u0004\u0018\u00010\u0013\u00a2\u0006\u0004\u0008d\u0010eJ/\u0010g\u001a\u00020\u00082\u0006\u0010]\u001a\u00020f2\u000e\u0010_\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010^2\u0008\u0010`\u001a\u0004\u0018\u00010\u0013\u00a2\u0006\u0004\u0008g\u0010hJ%\u0010k\u001a\u00020\u00082\u0006\u0010j\u001a\u00020i2\u000e\u0010_\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010^\u00a2\u0006\u0004\u0008k\u0010lJ\u001d\u0010o\u001a\u00020\u00082\u0006\u0010j\u001a\u00020i2\u0006\u0010n\u001a\u00020m\u00a2\u0006\u0004\u0008o\u0010pJ/\u0010q\u001a\u00020\u00082\u0006\u0010j\u001a\u00020i2\u000e\u0010_\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010^2\u0008\u0010`\u001a\u0004\u0018\u00010\u0013\u00a2\u0006\u0004\u0008q\u0010rJ+\u0010t\u001a\u00060sR\u00020\u00002\n\u0008\u0002\u00107\u001a\u0004\u0018\u0001062\n\u0008\u0002\u0010`\u001a\u0004\u0018\u00010\u0013H\u0007\u00a2\u0006\u0004\u0008t\u0010uJ\u0017\u0010v\u001a\u00020\u00062\u0006\u0010n\u001a\u00020mH\u0014\u00a2\u0006\u0004\u0008v\u0010wJ\u0017\u0010x\u001a\u00020\u001d2\u0006\u0010\u0007\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008x\u0010yR$\u0010@\u001a\u00020?2\u0006\u0010z\u001a\u00020?8\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008{\u0010|\u001a\u0004\u0008}\u0010~R\'\u0010H\u001a\u00020G2\u0006\u0010z\u001a\u00020G8\u0006@BX\u0086\u000e\u00a2\u0006\u000f\n\u0005\u0008\u007f\u0010\u0080\u0001\u001a\u0006\u0008\u0081\u0001\u0010\u0082\u0001R\u0018\u0010\u0086\u0001\u001a\u00030\u0083\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u0084\u0001\u0010\u0085\u0001R(\u0010K\u001a\u00020\u00132\u0006\u0010z\u001a\u00020\u00138\u0006@BX\u0086\u000e\u00a2\u0006\u0010\n\u0006\u0008\u0087\u0001\u0010\u0088\u0001\u001a\u0006\u0008\u0089\u0001\u0010\u008a\u0001R\u001a\u0010N\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u008b\u0001\u0010\u0088\u0001R\u0018\u0010P\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u008c\u0001\u0010\u008d\u0001R)\u0010\u0092\u0001\u001a\u00020C2\u0006\u0010z\u001a\u00020C8\u0006@BX\u0086\u000e\u00a2\u0006\u0010\n\u0006\u0008\u008e\u0001\u0010\u008f\u0001\u001a\u0006\u0008\u0090\u0001\u0010\u0091\u0001R\'\u0010S\u001a\u00020\u00172\u0006\u0010z\u001a\u00020\u00178\u0006@BX\u0086\u000e\u00a2\u0006\u000f\n\u0006\u0008\u0093\u0001\u0010\u008d\u0001\u001a\u0005\u0008S\u0010\u0094\u0001R(\u0010U\u001a\u00020\u00172\u0006\u0010z\u001a\u00020\u00178\u0006@BX\u0086\u000e\u00a2\u0006\u0010\n\u0006\u0008\u0095\u0001\u0010\u008d\u0001\u001a\u0006\u0008\u0096\u0001\u0010\u0094\u0001R\u0016\u00103\u001a\u00020\u00178BX\u0082\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u0097\u0001\u0010\u0094\u0001\u00a8\u0006\u009e\u0001"
    }
    d2 = {
        "Lcom/facebook/login/LoginManager;",
        "",
        "<init>",
        "()V",
        "Lcom/facebook/login/StartActivityDelegate;",
        "startActivityDelegate",
        "Lcom/facebook/login/LoginClient$Request;",
        "request",
        "",
        "Kkkkkkkkkkkkkkkk",
        "(Lcom/facebook/login/StartActivityDelegate;Lcom/facebook/login/LoginClient$Request;)V",
        "Landroid/content/Context;",
        "context",
        "loginRequest",
        "Wwwwwwwwwww",
        "(Landroid/content/Context;Lcom/facebook/login/LoginClient$Request;)V",
        "Lcom/facebook/login/LoginClient$Result$Code;",
        "result",
        "",
        "",
        "resultExtras",
        "Ljava/lang/Exception;",
        "exception",
        "",
        "wasLoginActivityTried",
        "Wwwwwwwwwwwwwwwwwww",
        "(Landroid/content/Context;Lcom/facebook/login/LoginClient$Result$Code;Ljava/util/Map;Ljava/lang/Exception;ZLcom/facebook/login/LoginClient$Request;)V",
        "Kkkkkkkkkkkkkk",
        "(Lcom/facebook/login/StartActivityDelegate;Lcom/facebook/login/LoginClient$Request;)Z",
        "Landroid/content/Intent;",
        "intent",
        "Wwwwww",
        "(Landroid/content/Intent;)Z",
        "Lcom/facebook/AccessToken;",
        "newToken",
        "Lcom/facebook/AuthenticationToken;",
        "newIdToken",
        "origRequest",
        "Lcom/facebook/FacebookException;",
        "isCanceled",
        "Lcom/facebook/FacebookCallback;",
        "Lcom/facebook/login/LoginResult;",
        "callback",
        "Wwwwwwwwwwwwwwwwwwwwwww",
        "(Lcom/facebook/AccessToken;Lcom/facebook/AuthenticationToken;Lcom/facebook/login/LoginClient$Request;Lcom/facebook/FacebookException;ZLcom/facebook/FacebookCallback;)V",
        "Lcom/facebook/LoginStatusCallback;",
        "responseCallback",
        "",
        "toastDurationMs",
        "Www",
        "(Landroid/content/Context;Lcom/facebook/LoginStatusCallback;J)V",
        "isExpressLoginAllowed",
        "Kkkkkkkkkkkkkkkkkkkkkkk",
        "(Z)V",
        "Lcom/facebook/CallbackManager;",
        "callbackManager",
        "Wwwwwwww",
        "(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V",
        "",
        "resultCode",
        "data",
        "Wwwwwwwwww",
        "(ILandroid/content/Intent;Lcom/facebook/FacebookCallback;)Z",
        "Lcom/facebook/login/LoginBehavior;",
        "loginBehavior",
        "Kkkkkkkkkkkkkkkkkkkkk",
        "(Lcom/facebook/login/LoginBehavior;)Lcom/facebook/login/LoginManager;",
        "Lcom/facebook/login/LoginTargetApp;",
        "targetApp",
        "Kkkkkkkkkkkkkkkkkkkk",
        "(Lcom/facebook/login/LoginTargetApp;)Lcom/facebook/login/LoginManager;",
        "Lcom/facebook/login/DefaultAudience;",
        "defaultAudience",
        "Kkkkkkkkkkkkkkkkkkkkkkkk",
        "(Lcom/facebook/login/DefaultAudience;)Lcom/facebook/login/LoginManager;",
        "authType",
        "Kkkkkkkkkkkkkkkkkkkkkkkkk",
        "(Ljava/lang/String;)Lcom/facebook/login/LoginManager;",
        "messengerPageId",
        "Kkkkkkkkkkkkkkkkkkk",
        "resetMessengerState",
        "Kkkkkkkkkkkkkkkkkk",
        "(Z)Lcom/facebook/login/LoginManager;",
        "isFamilyLogin",
        "Kkkkkkkkkkkkkkkkkkkkkk",
        "shouldSkipAccountDeduplication",
        "Kkkkkkkkkkkkkkkkk",
        "Wwwwwwwwwwww",
        "Wwww",
        "(Landroid/content/Context;Lcom/facebook/LoginStatusCallback;)V",
        "Wwwww",
        "(Landroid/content/Context;JLcom/facebook/LoginStatusCallback;)V",
        "Landroidx/fragment/app/Fragment;",
        "fragment",
        "",
        "permissions",
        "loggerID",
        "Wwwwwwwwwwwwww",
        "(Landroidx/fragment/app/Fragment;Ljava/util/Collection;Ljava/lang/String;)V",
        "Landroid/app/Fragment;",
        "Wwwwwwwwwwwwwww",
        "(Landroid/app/Fragment;Ljava/util/Collection;Ljava/lang/String;)V",
        "Lcom/facebook/internal/FragmentWrapper;",
        "Wwwwwwwwwwwww",
        "(Lcom/facebook/internal/FragmentWrapper;Ljava/util/Collection;Ljava/lang/String;)V",
        "Landroid/app/Activity;",
        "activity",
        "Wwwwwwwwwwwwwwwww",
        "(Landroid/app/Activity;Ljava/util/Collection;)V",
        "Lcom/facebook/login/LoginConfiguration;",
        "loginConfig",
        "Wwwwwwwwwwwwwwwwww",
        "(Landroid/app/Activity;Lcom/facebook/login/LoginConfiguration;)V",
        "Wwwwwwwwwwwwwwww",
        "(Landroid/app/Activity;Ljava/util/Collection;Ljava/lang/String;)V",
        "Lcom/facebook/login/LoginManager$FacebookLoginActivityResultContract;",
        "Wwwwwwwwwwwwwwwwwwwwwwwww",
        "(Lcom/facebook/CallbackManager;Ljava/lang/String;)Lcom/facebook/login/LoginManager$FacebookLoginActivityResultContract;",
        "Wwwwwwwwwwwwwwwwwwwwwwww",
        "(Lcom/facebook/login/LoginConfiguration;)Lcom/facebook/login/LoginClient$Request;",
        "Wwwwwwwwwwwwwwwwwwwwww",
        "(Lcom/facebook/login/LoginClient$Request;)Landroid/content/Intent;",
        "<set-?>",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Lcom/facebook/login/LoginBehavior;",
        "getLoginBehavior",
        "()Lcom/facebook/login/LoginBehavior;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Lcom/facebook/login/DefaultAudience;",
        "getDefaultAudience",
        "()Lcom/facebook/login/DefaultAudience;",
        "Landroid/content/SharedPreferences;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Landroid/content/SharedPreferences;",
        "sharedPreferences",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Ljava/lang/String;",
        "getAuthType",
        "()Ljava/lang/String;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Z",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Lcom/facebook/login/LoginTargetApp;",
        "getLoginTargetApp",
        "()Lcom/facebook/login/LoginTargetApp;",
        "loginTargetApp",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwww",
        "()Z",
        "Wwwwwwwwwwwwwwwwwwwwwwwwww",
        "getShouldSkipAccountDeduplication",
        "Wwwwwwwwwwwwwwwwwwww",
        "Companion",
        "ActivityStartActivityDelegate",
        "AndroidxActivityResultRegistryOwnerStartActivityDelegate",
        "FacebookLoginActivityResultContract",
        "FragmentStartActivityDelegate",
        "LoginLoggerHolder",
        "facebook-common_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/facebook/login/LoginManager$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static volatile Wwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/login/LoginManager;

.field public static final Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Wwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public Wwwwwwwwwwwwwwwwwwwwwwwwww:Z

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwww:Z

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/login/LoginTargetApp;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/SharedPreferences;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/login/DefaultAudience;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/login/LoginBehavior;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/facebook/login/LoginManager$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/facebook/login/LoginManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/facebook/login/LoginManager;->Companion:Lcom/facebook/login/LoginManager$Companion;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/facebook/login/LoginManager$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/login/LoginManager$Companion;)Ljava/util/Set;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Lcom/facebook/login/LoginManager;->Wwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Set;

    .line 14
    .line 15
    const-class v0, Lcom/facebook/login/LoginManager;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lcom/facebook/login/LoginManager;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 22
    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/facebook/login/LoginBehavior;->NATIVE_WITH_FALLBACK:Lcom/facebook/login/LoginBehavior;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/facebook/login/LoginManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/login/LoginBehavior;

    .line 7
    .line 8
    sget-object v0, Lcom/facebook/login/DefaultAudience;->FRIENDS:Lcom/facebook/login/DefaultAudience;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/facebook/login/LoginManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/login/DefaultAudience;

    .line 11
    .line 12
    const-string v0, "rerequest"

    .line 13
    .line 14
    iput-object v0, p0, Lcom/facebook/login/LoginManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 15
    .line 16
    sget-object v0, Lcom/facebook/login/LoginTargetApp;->FACEBOOK:Lcom/facebook/login/LoginTargetApp;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/facebook/login/LoginManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/login/LoginTargetApp;

    .line 19
    .line 20
    invoke-static {}, Lcom/facebook/internal/Validate;->Wwwwwwwwwwwwwwwwwwww()V

    .line 21
    .line 22
    .line 23
    invoke-static {}, Lcom/facebook/FacebookSdk;->Wwwwwwwwwwwwwwwwwwwwwww()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "com.facebook.loginManager"

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p0, Lcom/facebook/login/LoginManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/SharedPreferences;

    .line 35
    .line 36
    sget-boolean v0, Lcom/facebook/FacebookSdk;->Wwwwwwwwwwwwwwwwwww:Z

    .line 37
    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    invoke-static {}, Lcom/facebook/internal/CustomTabUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    if-eqz v0, :cond_0

    .line 45
    .line 46
    new-instance v0, Lcom/facebook/login/CustomTabPrefetchHelper;

    .line 47
    .line 48
    invoke-direct {v0}, Lcom/facebook/login/CustomTabPrefetchHelper;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-static {}, Lcom/facebook/FacebookSdk;->Wwwwwwwwwwwwwwwwwwwwwww()Landroid/content/Context;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    const-string v2, "com.android.chrome"

    .line 56
    .line 57
    invoke-static {v1, v2, v0}, Landroidx/browser/customtabs/CustomTabsClient;->bindCustomTabsService(Landroid/content/Context;Ljava/lang/String;Landroidx/browser/customtabs/CustomTabsServiceConnection;)Z

    .line 58
    .line 59
    .line 60
    invoke-static {}, Lcom/facebook/FacebookSdk;->Wwwwwwwwwwwwwwwwwwwwwww()Landroid/content/Context;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-static {}, Lcom/facebook/FacebookSdk;->Wwwwwwwwwwwwwwwwwwwwwww()Landroid/content/Context;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-static {v0, v1}, Landroidx/browser/customtabs/CustomTabsClient;->connectAndInitialize(Landroid/content/Context;Ljava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    :cond_0
    return-void
.end method

.method public static final Kkkkkkkkkkkkkkk(Lcom/facebook/login/LoginManager;ILandroid/content/Intent;)Z
    .locals 6

    .line 1
    const/4 v4, 0x4

    .line 2
    const/4 v5, 0x0

    .line 3
    const/4 v3, 0x0

    .line 4
    move-object v0, p0

    .line 5
    move v1, p1

    .line 6
    move-object v2, p2

    .line 7
    invoke-static/range {v0 .. v5}, Lcom/facebook/login/LoginManager;->Wwwwwwwww(Lcom/facebook/login/LoginManager;ILandroid/content/Intent;Lcom/facebook/FacebookCallback;ILjava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public static final Kkkkkkkkkkkkkkkkkkkkkkkkkk(Ljava/lang/String;Lcom/facebook/login/LoginLogger;Lcom/facebook/LoginStatusCallback;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 17

    .line 1
    move-object/from16 v0, p4

    .line 2
    .line 3
    if-eqz v0, :cond_7

    .line 4
    .line 5
    const-string v1, "com.facebook.platform.status.ERROR_TYPE"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "com.facebook.platform.status.ERROR_DESCRIPTION"

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    sget-object v0, Lcom/facebook/login/LoginManager;->Companion:Lcom/facebook/login/LoginManager$Companion;

    .line 20
    .line 21
    move-object/from16 v3, p0

    .line 22
    .line 23
    move-object/from16 v4, p1

    .line 24
    .line 25
    move-object/from16 v5, p2

    .line 26
    .line 27
    invoke-static/range {v0 .. v5}, Lcom/facebook/login/LoginManager$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/login/LoginManager$Companion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/login/LoginLogger;Lcom/facebook/LoginStatusCallback;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    move-object/from16 v3, p0

    .line 32
    .line 33
    move-object/from16 v4, p1

    .line 34
    .line 35
    const-string v1, "com.facebook.platform.extra.ACCESS_TOKEN"

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    sget-object v1, Lcom/facebook/internal/Utility;->INSTANCE:Lcom/facebook/internal/Utility;

    .line 42
    .line 43
    new-instance v1, Ljava/util/Date;

    .line 44
    .line 45
    const-wide/16 v7, 0x0

    .line 46
    .line 47
    invoke-direct {v1, v7, v8}, Ljava/util/Date;-><init>(J)V

    .line 48
    .line 49
    .line 50
    const-string v2, "com.facebook.platform.extra.EXPIRES_SECONDS_SINCE_EPOCH"

    .line 51
    .line 52
    invoke-static {v0, v2, v1}, Lcom/facebook/internal/Utility;->Wwwwwwwwww(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;

    .line 53
    .line 54
    .line 55
    move-result-object v13

    .line 56
    const-string v1, "com.facebook.platform.extra.PERMISSIONS"

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 59
    .line 60
    .line 61
    move-result-object v9

    .line 62
    const-string v1, "signed request"

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    const-string v2, "graph_domain"

    .line 69
    .line 70
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v16

    .line 74
    new-instance v2, Ljava/util/Date;

    .line 75
    .line 76
    invoke-direct {v2, v7, v8}, Ljava/util/Date;-><init>(J)V

    .line 77
    .line 78
    .line 79
    const-string v5, "com.facebook.platform.extra.EXTRA_DATA_ACCESS_EXPIRATION_TIME"

    .line 80
    .line 81
    invoke-static {v0, v5, v2}, Lcom/facebook/internal/Utility;->Wwwwwwwwww(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;

    .line 82
    .line 83
    .line 84
    move-result-object v15

    .line 85
    if-eqz v1, :cond_2

    .line 86
    .line 87
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-nez v0, :cond_1

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_1
    sget-object v0, Lcom/facebook/login/LoginMethodHandler;->Companion:Lcom/facebook/login/LoginMethodHandler$Companion;

    .line 95
    .line 96
    invoke-virtual {v0, v1}, Lcom/facebook/login/LoginMethodHandler$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    :goto_0
    move-object v8, v0

    .line 101
    goto :goto_2

    .line 102
    :cond_2
    :goto_1
    const/4 v0, 0x0

    .line 103
    goto :goto_0

    .line 104
    :goto_2
    if-eqz v6, :cond_5

    .line 105
    .line 106
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    if-nez v0, :cond_3

    .line 111
    .line 112
    goto :goto_3

    .line 113
    :cond_3
    if-eqz v9, :cond_5

    .line 114
    .line 115
    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-eqz v0, :cond_4

    .line 120
    .line 121
    goto :goto_3

    .line 122
    :cond_4
    if-eqz v8, :cond_5

    .line 123
    .line 124
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    if-nez v0, :cond_6

    .line 129
    .line 130
    :cond_5
    :goto_3
    move-object/from16 v0, p2

    .line 131
    .line 132
    goto :goto_4

    .line 133
    :cond_6
    new-instance v5, Lcom/facebook/AccessToken;

    .line 134
    .line 135
    const/4 v12, 0x0

    .line 136
    const/4 v14, 0x0

    .line 137
    const/4 v10, 0x0

    .line 138
    const/4 v11, 0x0

    .line 139
    move-object/from16 v7, p3

    .line 140
    .line 141
    invoke-direct/range {v5 .. v16}, Lcom/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Lcom/facebook/AccessTokenSource;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    sget-object v0, Lcom/facebook/AccessToken;->Companion:Lcom/facebook/AccessToken$Companion;

    .line 145
    .line 146
    invoke-virtual {v0, v5}, Lcom/facebook/AccessToken$Companion;->Wwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/AccessToken;)V

    .line 147
    .line 148
    .line 149
    sget-object v0, Lcom/facebook/Profile;->Companion:Lcom/facebook/Profile$Companion;

    .line 150
    .line 151
    invoke-virtual {v0}, Lcom/facebook/Profile$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v4, v3}, Lcom/facebook/login/LoginLogger;->Wwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    move-object/from16 v0, p2

    .line 158
    .line 159
    invoke-interface {v0, v5}, Lcom/facebook/LoginStatusCallback;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/AccessToken;)V

    .line 160
    .line 161
    .line 162
    return-void

    .line 163
    :goto_4
    invoke-virtual {v4, v3}, Lcom/facebook/login/LoginLogger;->Wwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    invoke-interface {v0}, Lcom/facebook/LoginStatusCallback;->onFailure()V

    .line 167
    .line 168
    .line 169
    return-void

    .line 170
    :cond_7
    move-object/from16 v3, p0

    .line 171
    .line 172
    move-object/from16 v4, p1

    .line 173
    .line 174
    move-object/from16 v0, p2

    .line 175
    .line 176
    invoke-virtual {v4, v3}, Lcom/facebook/login/LoginLogger;->Wwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    invoke-interface {v0}, Lcom/facebook/LoginStatusCallback;->onFailure()V

    .line 180
    .line 181
    .line 182
    return-void
.end method

.method public static final Wwwwwww(Lcom/facebook/login/LoginManager;Lcom/facebook/FacebookCallback;ILandroid/content/Intent;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p2, p3, p1}, Lcom/facebook/login/LoginManager;->Wwwwwwwwww(ILandroid/content/Intent;Lcom/facebook/FacebookCallback;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic Wwwwwwwww(Lcom/facebook/login/LoginManager;ILandroid/content/Intent;Lcom/facebook/FacebookCallback;ILjava/lang/Object;)Z
    .locals 0

    .line 1
    if-nez p5, :cond_1

    .line 2
    .line 3
    and-int/lit8 p4, p4, 0x4

    .line 4
    .line 5
    if-eqz p4, :cond_0

    .line 6
    .line 7
    const/4 p3, 0x0

    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/login/LoginManager;->Wwwwwwwwww(ILandroid/content/Intent;Lcom/facebook/FacebookCallback;)Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0

    .line 13
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 14
    .line 15
    const-string p1, "Super calls with default arguments not supported in this target, function: onActivityResult"

    .line 16
    .line 17
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p0
.end method

.method public static Wwwwwwwwwwwwwwwwwwwww()Lcom/facebook/login/LoginManager;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/facebook/login/LoginManager;->Companion:Lcom/facebook/login/LoginManager$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/facebook/login/LoginManager$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/facebook/login/LoginManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public static final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/login/LoginManager;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/facebook/login/LoginManager;->Wwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/login/LoginManager;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/login/LoginManager;Landroid/content/Intent;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/facebook/login/LoginManager;->Wwwwww(Landroid/content/Intent;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/login/LoginManager;Landroid/content/Context;Lcom/facebook/login/LoginClient$Request;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/facebook/login/LoginManager;->Wwwwwwwwwww(Landroid/content/Context;Lcom/facebook/login/LoginClient$Request;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/login/LoginManager;Landroid/content/Context;Lcom/facebook/login/LoginClient$Result$Code;Ljava/util/Map;Ljava/lang/Exception;ZLcom/facebook/login/LoginClient$Request;)V
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p6}, Lcom/facebook/login/LoginManager;->Wwwwwwwwwwwwwwwwwww(Landroid/content/Context;Lcom/facebook/login/LoginClient$Result$Code;Ljava/util/Map;Ljava/lang/Exception;ZLcom/facebook/login/LoginClient$Request;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/Set;
    .locals 1

    .line 1
    sget-object v0, Lcom/facebook/login/LoginManager;->Wwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Set;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/facebook/login/LoginManager;
    .locals 1

    .line 1
    sget-object v0, Lcom/facebook/login/LoginManager;->Wwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/login/LoginManager;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Lcom/facebook/login/LoginLogger;Lcom/facebook/LoginStatusCallback;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/facebook/login/LoginManager;->Kkkkkkkkkkkkkkkkkkkkkkkkkk(Ljava/lang/String;Lcom/facebook/login/LoginLogger;Lcom/facebook/LoginStatusCallback;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/login/LoginManager;ILandroid/content/Intent;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/facebook/login/LoginManager;->Kkkkkkkkkkkkkkk(Lcom/facebook/login/LoginManager;ILandroid/content/Intent;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/login/LoginManager;Lcom/facebook/FacebookCallback;ILandroid/content/Intent;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/facebook/login/LoginManager;->Wwwwwww(Lcom/facebook/login/LoginManager;Lcom/facebook/FacebookCallback;ILandroid/content/Intent;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method


# virtual methods
.method public final Kkkkkkkkkkkkkk(Lcom/facebook/login/StartActivityDelegate;Lcom/facebook/login/LoginClient$Request;)Z
    .locals 2

    .line 1
    invoke-virtual {p0, p2}, Lcom/facebook/login/LoginManager;->Wwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/login/LoginClient$Request;)Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p0, p2}, Lcom/facebook/login/LoginManager;->Wwwwww(Landroid/content/Intent;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    :try_start_0
    sget-object v0, Lcom/facebook/login/LoginClient;->Companion:Lcom/facebook/login/LoginClient$Companion;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/facebook/login/LoginClient$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-interface {p1, p2, v0}, Lcom/facebook/login/StartActivityDelegate;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    const/4 p1, 0x1

    .line 23
    return p1

    .line 24
    :catch_0
    return v1
.end method

.method public final Kkkkkkkkkkkkkkkk(Lcom/facebook/login/StartActivityDelegate;Lcom/facebook/login/LoginClient$Request;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/FacebookException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/facebook/login/StartActivityDelegate;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/app/Activity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0, p2}, Lcom/facebook/login/LoginManager;->Wwwwwwwwwww(Landroid/content/Context;Lcom/facebook/login/LoginClient$Request;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/facebook/internal/CallbackManagerImpl;->Companion:Lcom/facebook/internal/CallbackManagerImpl$Companion;

    .line 9
    .line 10
    sget-object v1, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->Login:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->toRequestCode()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    new-instance v2, Lcom/facebook/login/Wwwwwwwwwwwwwwwwwwww;

    .line 17
    .line 18
    invoke-direct {v2, p0}, Lcom/facebook/login/Wwwwwwwwwwwwwwwwwwww;-><init>(Lcom/facebook/login/LoginManager;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Lcom/facebook/internal/CallbackManagerImpl$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ILcom/facebook/internal/CallbackManagerImpl$Callback;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/facebook/login/LoginManager;->Kkkkkkkkkkkkkk(Lcom/facebook/login/StartActivityDelegate;Lcom/facebook/login/LoginClient$Request;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    new-instance v5, Lcom/facebook/FacebookException;

    .line 32
    .line 33
    const-string v0, "Log in attempt failed: FacebookActivity could not be started. Please make sure you added FacebookActivity to the AndroidManifest."

    .line 34
    .line 35
    invoke-direct {v5, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-interface {p1}, Lcom/facebook/login/StartActivityDelegate;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/app/Activity;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    sget-object v3, Lcom/facebook/login/LoginClient$Result$Code;->ERROR:Lcom/facebook/login/LoginClient$Result$Code;

    .line 43
    .line 44
    const/4 v4, 0x0

    .line 45
    const/4 v6, 0x0

    .line 46
    move-object v1, p0

    .line 47
    move-object v7, p2

    .line 48
    invoke-virtual/range {v1 .. v7}, Lcom/facebook/login/LoginManager;->Wwwwwwwwwwwwwwwwwww(Landroid/content/Context;Lcom/facebook/login/LoginClient$Result$Code;Ljava/util/Map;Ljava/lang/Exception;ZLcom/facebook/login/LoginClient$Request;)V

    .line 49
    .line 50
    .line 51
    throw v5
.end method

.method public final Kkkkkkkkkkkkkkkkk(Z)Lcom/facebook/login/LoginManager;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/facebook/login/LoginManager;->Wwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public final Kkkkkkkkkkkkkkkkkk(Z)Lcom/facebook/login/LoginManager;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/facebook/login/LoginManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public final Kkkkkkkkkkkkkkkkkkk(Ljava/lang/String;)Lcom/facebook/login/LoginManager;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/login/LoginManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final Kkkkkkkkkkkkkkkkkkkk(Lcom/facebook/login/LoginTargetApp;)Lcom/facebook/login/LoginManager;
    .locals 0
    .param p1    # Lcom/facebook/login/LoginTargetApp;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/login/LoginManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/login/LoginTargetApp;

    .line 2
    .line 3
    return-object p0
.end method

.method public final Kkkkkkkkkkkkkkkkkkkkk(Lcom/facebook/login/LoginBehavior;)Lcom/facebook/login/LoginManager;
    .locals 0
    .param p1    # Lcom/facebook/login/LoginBehavior;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/login/LoginManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/login/LoginBehavior;

    .line 2
    .line 3
    return-object p0
.end method

.method public final Kkkkkkkkkkkkkkkkkkkkkk(Z)Lcom/facebook/login/LoginManager;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/facebook/login/LoginManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public final Kkkkkkkkkkkkkkkkkkkkkkk(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/login/LoginManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "express_login_allowed"

    .line 8
    .line 9
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 10
    .line 11
    .line 12
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final Kkkkkkkkkkkkkkkkkkkkkkkk(Lcom/facebook/login/DefaultAudience;)Lcom/facebook/login/LoginManager;
    .locals 0
    .param p1    # Lcom/facebook/login/DefaultAudience;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/login/LoginManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/login/DefaultAudience;

    .line 2
    .line 3
    return-object p0
.end method

.method public final Kkkkkkkkkkkkkkkkkkkkkkkkk(Ljava/lang/String;)Lcom/facebook/login/LoginManager;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/login/LoginManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final Www(Landroid/content/Context;Lcom/facebook/LoginStatusCallback;J)V
    .locals 9

    .line 1
    invoke-static {}, Lcom/facebook/FacebookSdk;->Wwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v2

    .line 5
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    new-instance v8, Lcom/facebook/login/LoginLogger;

    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    invoke-static {}, Lcom/facebook/FacebookSdk;->Wwwwwwwwwwwwwwwwwwwwwww()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move-object v0, p1

    .line 23
    :goto_0
    invoke-direct {v8, v0, v2}, Lcom/facebook/login/LoginLogger;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/facebook/login/LoginManager;->Wwwwwwwwwwwwwwwwwwww()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    invoke-virtual {v8, v3}, Lcom/facebook/login/LoginLogger;->Wwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-interface {p2}, Lcom/facebook/LoginStatusCallback;->onFailure()V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    sget-object v0, Lcom/facebook/login/LoginStatusClient;->Companion:Lcom/facebook/login/LoginStatusClient$Companion;

    .line 40
    .line 41
    invoke-static {}, Lcom/facebook/FacebookSdk;->Wwwwwwwwwww()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    const/4 v7, 0x0

    .line 46
    move-object v1, p1

    .line 47
    move-wide v5, p3

    .line 48
    invoke-virtual/range {v0 .. v7}, Lcom/facebook/login/LoginStatusClient$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Lcom/facebook/login/LoginStatusClient;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    new-instance p3, Lcom/facebook/login/Wwwwwwwwwwwwwwwwwwwww;

    .line 53
    .line 54
    invoke-direct {p3, v3, v8, p2, v2}, Lcom/facebook/login/Wwwwwwwwwwwwwwwwwwwww;-><init>(Ljava/lang/String;Lcom/facebook/login/LoginLogger;Lcom/facebook/LoginStatusCallback;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, p3}, Lcom/facebook/internal/PlatformServiceClient;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/internal/PlatformServiceClient$CompletedListener;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v8, v3}, Lcom/facebook/login/LoginLogger;->Wwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/facebook/internal/PlatformServiceClient;->Wwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-nez p1, :cond_2

    .line 68
    .line 69
    invoke-virtual {v8, v3}, Lcom/facebook/login/LoginLogger;->Wwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-interface {p2}, Lcom/facebook/LoginStatusCallback;->onFailure()V

    .line 73
    .line 74
    .line 75
    :cond_2
    return-void
.end method

.method public final Wwww(Landroid/content/Context;Lcom/facebook/LoginStatusCallback;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/LoginStatusCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-wide/16 v0, 0x1388

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/facebook/login/LoginManager;->Wwwww(Landroid/content/Context;JLcom/facebook/LoginStatusCallback;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final Wwwww(Landroid/content/Context;JLcom/facebook/LoginStatusCallback;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/facebook/LoginStatusCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1, p4, p2, p3}, Lcom/facebook/login/LoginManager;->Www(Landroid/content/Context;Lcom/facebook/LoginStatusCallback;J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final Wwwwww(Landroid/content/Intent;)Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/facebook/FacebookSdk;->Wwwwwwwwwwwwwwwwwwwwwww()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    return p1

    .line 18
    :cond_0
    return v1
.end method

.method public final Wwwwwwww(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V
    .locals 2
    .param p1    # Lcom/facebook/CallbackManager;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/FacebookCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/CallbackManager;",
            "Lcom/facebook/FacebookCallback<",
            "Lcom/facebook/login/LoginResult;",
            ">;)V"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/facebook/internal/CallbackManagerImpl;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lcom/facebook/internal/CallbackManagerImpl;

    .line 6
    .line 7
    sget-object v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->Login:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->toRequestCode()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    new-instance v1, Lcom/facebook/login/Wwwwwwwwwwwwwwwwwwwwww;

    .line 14
    .line 15
    invoke-direct {v1, p0, p2}, Lcom/facebook/login/Wwwwwwwwwwwwwwwwwwwwww;-><init>(Lcom/facebook/login/LoginManager;Lcom/facebook/FacebookCallback;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0, v1}, Lcom/facebook/internal/CallbackManagerImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ILcom/facebook/internal/CallbackManagerImpl$Callback;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    new-instance p1, Lcom/facebook/FacebookException;

    .line 23
    .line 24
    const-string p2, "Unexpected CallbackManager, please use the provided Factory."

    .line 25
    .line 26
    invoke-direct {p1, p2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p1
.end method

.method public Wwwwwwwwww(ILandroid/content/Intent;Lcom/facebook/FacebookCallback;)Z
    .locals 15
    .param p2    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/facebook/FacebookCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x3
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Intent;",
            "Lcom/facebook/FacebookCallback<",
            "Lcom/facebook/login/LoginResult;",
            ">;)Z"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    move/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    sget-object v2, Lcom/facebook/login/LoginClient$Result$Code;->ERROR:Lcom/facebook/login/LoginClient$Result$Code;

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    const/4 v4, 0x0

    .line 9
    const/4 v5, 0x0

    .line 10
    if-eqz v1, :cond_3

    .line 11
    .line 12
    const-class v6, Lcom/facebook/login/LoginClient$Result;

    .line 13
    .line 14
    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 15
    .line 16
    .line 17
    move-result-object v6

    .line 18
    invoke-virtual {v1, v6}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 19
    .line 20
    .line 21
    const-string v6, "com.facebook.LoginFragment:Result"

    .line 22
    .line 23
    invoke-virtual {v1, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/facebook/login/LoginClient$Result;

    .line 28
    .line 29
    if-eqz v1, :cond_4

    .line 30
    .line 31
    iget-object v2, v1, Lcom/facebook/login/LoginClient$Result;->Wwwwwwwwwwwwwwwwwwww:Lcom/facebook/login/LoginClient$Request;

    .line 32
    .line 33
    iget-object v6, v1, Lcom/facebook/login/LoginClient$Result;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/login/LoginClient$Result$Code;

    .line 34
    .line 35
    const/4 v7, -0x1

    .line 36
    if-eq v0, v7, :cond_1

    .line 37
    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    :goto_0
    move-object v0, v4

    .line 41
    move-object v7, v0

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    move v5, v3

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    sget-object v0, Lcom/facebook/login/LoginClient$Result$Code;->SUCCESS:Lcom/facebook/login/LoginClient$Result$Code;

    .line 46
    .line 47
    if-ne v6, v0, :cond_2

    .line 48
    .line 49
    iget-object v0, v1, Lcom/facebook/login/LoginClient$Result;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/AccessToken;

    .line 50
    .line 51
    iget-object v7, v1, Lcom/facebook/login/LoginClient$Result;->Wwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/AuthenticationToken;

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_2
    new-instance v0, Lcom/facebook/FacebookAuthorizationException;

    .line 55
    .line 56
    iget-object v7, v1, Lcom/facebook/login/LoginClient$Result;->Wwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 57
    .line 58
    invoke-direct {v0, v7}, Lcom/facebook/FacebookAuthorizationException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    move-object v7, v4

    .line 62
    move-object v4, v0

    .line 63
    move-object v0, v7

    .line 64
    :goto_1
    iget-object v1, v1, Lcom/facebook/login/LoginClient$Result;->Wwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 65
    .line 66
    move-object v8, v1

    .line 67
    move-object v11, v2

    .line 68
    move v13, v5

    .line 69
    move-object v1, v7

    .line 70
    move-object v7, v6

    .line 71
    goto :goto_2

    .line 72
    :cond_3
    if-nez v0, :cond_4

    .line 73
    .line 74
    sget-object v2, Lcom/facebook/login/LoginClient$Result$Code;->CANCEL:Lcom/facebook/login/LoginClient$Result$Code;

    .line 75
    .line 76
    move-object v7, v2

    .line 77
    move v13, v3

    .line 78
    move-object v0, v4

    .line 79
    move-object v1, v0

    .line 80
    move-object v8, v1

    .line 81
    move-object v11, v8

    .line 82
    goto :goto_2

    .line 83
    :cond_4
    move-object v7, v2

    .line 84
    move-object v0, v4

    .line 85
    move-object v1, v0

    .line 86
    move-object v8, v1

    .line 87
    move-object v11, v8

    .line 88
    move v13, v5

    .line 89
    :goto_2
    if-nez v4, :cond_5

    .line 90
    .line 91
    if-nez v0, :cond_5

    .line 92
    .line 93
    if-nez v13, :cond_5

    .line 94
    .line 95
    new-instance v4, Lcom/facebook/FacebookException;

    .line 96
    .line 97
    const-string v2, "Unexpected call to LoginManager.onActivityResult"

    .line 98
    .line 99
    invoke-direct {v4, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    :cond_5
    move-object v12, v4

    .line 103
    const/4 v10, 0x1

    .line 104
    const/4 v6, 0x0

    .line 105
    move-object v5, p0

    .line 106
    move-object v9, v12

    .line 107
    invoke-virtual/range {v5 .. v11}, Lcom/facebook/login/LoginManager;->Wwwwwwwwwwwwwwwwwww(Landroid/content/Context;Lcom/facebook/login/LoginClient$Result$Code;Ljava/util/Map;Ljava/lang/Exception;ZLcom/facebook/login/LoginClient$Request;)V

    .line 108
    .line 109
    .line 110
    move-object/from16 v14, p3

    .line 111
    .line 112
    move-object v10, v1

    .line 113
    move-object v8, v5

    .line 114
    move-object v9, v0

    .line 115
    invoke-virtual/range {v8 .. v14}, Lcom/facebook/login/LoginManager;->Wwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/AccessToken;Lcom/facebook/AuthenticationToken;Lcom/facebook/login/LoginClient$Request;Lcom/facebook/FacebookException;ZLcom/facebook/FacebookCallback;)V

    .line 116
    .line 117
    .line 118
    return v3
.end method

.method public final Wwwwwwwwwww(Landroid/content/Context;Lcom/facebook/login/LoginClient$Request;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/facebook/login/LoginManager$LoginLoggerHolder;->INSTANCE:Lcom/facebook/login/LoginManager$LoginLoggerHolder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/facebook/login/LoginManager$LoginLoggerHolder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;)Lcom/facebook/login/LoginLogger;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    if-eqz p2, :cond_1

    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/facebook/login/LoginClient$Request;->Wwwwwwwwwwwwwwwwww()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const-string v0, "foa_mobile_login_start"

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const-string v0, "fb_mobile_login_start"

    .line 21
    .line 22
    :goto_0
    invoke-virtual {p1, p2, v0}, Lcom/facebook/login/LoginLogger;->Wwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    return-void
.end method

.method public Wwwwwwwwwwww()V
    .locals 2

    .line 1
    sget-object v0, Lcom/facebook/AccessToken;->Companion:Lcom/facebook/AccessToken$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/facebook/AccessToken$Companion;->Wwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/AccessToken;)V

    .line 5
    .line 6
    .line 7
    sget-object v0, Lcom/facebook/AuthenticationToken;->Companion:Lcom/facebook/AuthenticationToken$Companion;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/facebook/AuthenticationToken$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/AuthenticationToken;)V

    .line 10
    .line 11
    .line 12
    sget-object v0, Lcom/facebook/Profile;->Companion:Lcom/facebook/Profile$Companion;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/facebook/Profile$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/Profile;)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p0, v0}, Lcom/facebook/login/LoginManager;->Kkkkkkkkkkkkkkkkkkkkkkk(Z)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final Wwwwwwwwwwwww(Lcom/facebook/internal/FragmentWrapper;Ljava/util/Collection;Ljava/lang/String;)V
    .locals 3
    .param p1    # Lcom/facebook/internal/FragmentWrapper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/internal/FragmentWrapper;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/login/LoginConfiguration;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x2

    .line 5
    invoke-direct {v0, p2, v1, v2, v1}, Lcom/facebook/login/LoginConfiguration;-><init>(Ljava/util/Collection;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/facebook/login/LoginManager;->Wwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/login/LoginConfiguration;)Lcom/facebook/login/LoginClient$Request;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    if-eqz p3, :cond_0

    .line 13
    .line 14
    invoke-virtual {p2, p3}, Lcom/facebook/login/LoginClient$Request;->Wwwwwwwwwwwwwww(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    new-instance p3, Lcom/facebook/login/LoginManager$FragmentStartActivityDelegate;

    .line 18
    .line 19
    invoke-direct {p3, p1}, Lcom/facebook/login/LoginManager$FragmentStartActivityDelegate;-><init>(Lcom/facebook/internal/FragmentWrapper;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p3, p2}, Lcom/facebook/login/LoginManager;->Kkkkkkkkkkkkkkkk(Lcom/facebook/login/StartActivityDelegate;Lcom/facebook/login/LoginClient$Request;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final Wwwwwwwwwwwwww(Landroidx/fragment/app/Fragment;Ljava/util/Collection;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0, p2, p3}, Lcom/facebook/login/LoginManager;->Wwwwwwwwwwwww(Lcom/facebook/internal/FragmentWrapper;Ljava/util/Collection;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final Wwwwwwwwwwwwwww(Landroid/app/Fragment;Ljava/util/Collection;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Fragment;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroid/app/Fragment;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0, p2, p3}, Lcom/facebook/login/LoginManager;->Wwwwwwwwwwwww(Lcom/facebook/internal/FragmentWrapper;Ljava/util/Collection;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final Wwwwwwwwwwwwwwww(Landroid/app/Activity;Ljava/util/Collection;Ljava/lang/String;)V
    .locals 3
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/login/LoginConfiguration;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x2

    .line 5
    invoke-direct {v0, p2, v1, v2, v1}, Lcom/facebook/login/LoginConfiguration;-><init>(Ljava/util/Collection;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/facebook/login/LoginManager;->Wwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/login/LoginConfiguration;)Lcom/facebook/login/LoginClient$Request;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    if-eqz p3, :cond_0

    .line 13
    .line 14
    invoke-virtual {p2, p3}, Lcom/facebook/login/LoginClient$Request;->Wwwwwwwwwwwwwww(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    new-instance p3, Lcom/facebook/login/LoginManager$ActivityStartActivityDelegate;

    .line 18
    .line 19
    invoke-direct {p3, p1}, Lcom/facebook/login/LoginManager$ActivityStartActivityDelegate;-><init>(Landroid/app/Activity;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p3, p2}, Lcom/facebook/login/LoginManager;->Kkkkkkkkkkkkkkkk(Lcom/facebook/login/StartActivityDelegate;Lcom/facebook/login/LoginClient$Request;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwww(Landroid/app/Activity;Ljava/util/Collection;)V
    .locals 3
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/login/LoginConfiguration;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x2

    .line 5
    invoke-direct {v0, p2, v1, v2, v1}, Lcom/facebook/login/LoginConfiguration;-><init>(Ljava/util/Collection;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1, v0}, Lcom/facebook/login/LoginManager;->Wwwwwwwwwwwwwwwwww(Landroid/app/Activity;Lcom/facebook/login/LoginConfiguration;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwww(Landroid/app/Activity;Lcom/facebook/login/LoginConfiguration;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/login/LoginConfiguration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Landroidx/activity/result/ActivityResultRegistryOwner;

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lcom/facebook/login/LoginManager;->Wwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/login/LoginConfiguration;)Lcom/facebook/login/LoginClient$Request;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    new-instance v0, Lcom/facebook/login/LoginManager$ActivityStartActivityDelegate;

    .line 8
    .line 9
    invoke-direct {v0, p1}, Lcom/facebook/login/LoginManager$ActivityStartActivityDelegate;-><init>(Landroid/app/Activity;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0, p2}, Lcom/facebook/login/LoginManager;->Kkkkkkkkkkkkkkkk(Lcom/facebook/login/StartActivityDelegate;Lcom/facebook/login/LoginClient$Request;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwww(Landroid/content/Context;Lcom/facebook/login/LoginClient$Result$Code;Ljava/util/Map;Ljava/lang/Exception;ZLcom/facebook/login/LoginClient$Request;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/login/LoginClient$Result$Code;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Exception;",
            "Z",
            "Lcom/facebook/login/LoginClient$Request;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/facebook/login/LoginManager$LoginLoggerHolder;->INSTANCE:Lcom/facebook/login/LoginManager$LoginLoggerHolder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/facebook/login/LoginManager$LoginLoggerHolder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;)Lcom/facebook/login/LoginLogger;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    if-nez p6, :cond_1

    .line 11
    .line 12
    const/4 p5, 0x4

    .line 13
    const/4 p6, 0x0

    .line 14
    const-string p2, "fb_mobile_login_complete"

    .line 15
    .line 16
    const-string p3, "Unexpected call to logCompleteLogin with null pendingAuthorizationRequest."

    .line 17
    .line 18
    const/4 p4, 0x0

    .line 19
    invoke-static/range {p1 .. p6}, Lcom/facebook/login/LoginLogger;->Wwwwwwwwwwwwwwwwwwww(Lcom/facebook/login/LoginLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    .line 24
    .line 25
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 26
    .line 27
    .line 28
    if-eqz p5, :cond_2

    .line 29
    .line 30
    const-string p5, "1"

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    const-string p5, "0"

    .line 34
    .line 35
    :goto_0
    const-string v0, "try_login_activity"

    .line 36
    .line 37
    invoke-interface {v3, v0, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p6}, Lcom/facebook/login/LoginClient$Request;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {p6}, Lcom/facebook/login/LoginClient$Request;->Wwwwwwwwwwwwwwwwww()Z

    .line 45
    .line 46
    .line 47
    move-result p5

    .line 48
    if-eqz p5, :cond_3

    .line 49
    .line 50
    const-string p5, "foa_mobile_login_complete"

    .line 51
    .line 52
    :goto_1
    move-object v1, p1

    .line 53
    move-object v4, p2

    .line 54
    move-object v5, p3

    .line 55
    move-object v6, p4

    .line 56
    move-object v7, p5

    .line 57
    goto :goto_2

    .line 58
    :cond_3
    const-string p5, "fb_mobile_login_complete"

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :goto_2
    invoke-virtual/range {v1 .. v7}, Lcom/facebook/login/LoginLogger;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Ljava/util/Map;Lcom/facebook/login/LoginClient$Result$Code;Ljava/util/Map;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwww()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/facebook/login/LoginManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    const-string v1, "express_login_allowed"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/login/LoginClient$Request;)Landroid/content/Intent;
    .locals 3
    .param p1    # Lcom/facebook/login/LoginClient$Request;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/facebook/FacebookSdk;->Wwwwwwwwwwwwwwwwwwwwwww()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-class v2, Lcom/facebook/FacebookActivity;

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->Wwwwwwwwwwwwwwwwwwwwwwwww()Lcom/facebook/login/LoginBehavior;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    new-instance v1, Landroid/os/Bundle;

    .line 27
    .line 28
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v2, "request"

    .line 32
    .line 33
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 34
    .line 35
    .line 36
    const-string p1, "com.facebook.LoginFragment:Request"

    .line 37
    .line 38
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 39
    .line 40
    .line 41
    return-object v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/AccessToken;Lcom/facebook/AuthenticationToken;Lcom/facebook/login/LoginClient$Request;Lcom/facebook/FacebookException;ZLcom/facebook/FacebookCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/AccessToken;",
            "Lcom/facebook/AuthenticationToken;",
            "Lcom/facebook/login/LoginClient$Request;",
            "Lcom/facebook/FacebookException;",
            "Z",
            "Lcom/facebook/FacebookCallback<",
            "Lcom/facebook/login/LoginResult;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    sget-object v0, Lcom/facebook/AccessToken;->Companion:Lcom/facebook/AccessToken$Companion;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/facebook/AccessToken$Companion;->Wwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/AccessToken;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/facebook/Profile;->Companion:Lcom/facebook/Profile$Companion;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/facebook/Profile$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 11
    .line 12
    .line 13
    :cond_0
    if-eqz p2, :cond_1

    .line 14
    .line 15
    sget-object v0, Lcom/facebook/AuthenticationToken;->Companion:Lcom/facebook/AuthenticationToken$Companion;

    .line 16
    .line 17
    invoke-virtual {v0, p2}, Lcom/facebook/AuthenticationToken$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/AuthenticationToken;)V

    .line 18
    .line 19
    .line 20
    :cond_1
    if-eqz p6, :cond_6

    .line 21
    .line 22
    if-eqz p1, :cond_2

    .line 23
    .line 24
    if-eqz p3, :cond_2

    .line 25
    .line 26
    sget-object v0, Lcom/facebook/login/LoginManager;->Companion:Lcom/facebook/login/LoginManager$Companion;

    .line 27
    .line 28
    invoke-virtual {v0, p3, p1, p2}, Lcom/facebook/login/LoginManager$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/login/LoginClient$Request;Lcom/facebook/AccessToken;Lcom/facebook/AuthenticationToken;)Lcom/facebook/login/LoginResult;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    goto :goto_0

    .line 33
    :cond_2
    const/4 p2, 0x0

    .line 34
    :goto_0
    if-nez p5, :cond_5

    .line 35
    .line 36
    if-eqz p2, :cond_3

    .line 37
    .line 38
    invoke-virtual {p2}, Lcom/facebook/login/LoginResult;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/Set;

    .line 39
    .line 40
    .line 41
    move-result-object p3

    .line 42
    invoke-interface {p3}, Ljava/util/Set;->isEmpty()Z

    .line 43
    .line 44
    .line 45
    move-result p3

    .line 46
    if-eqz p3, :cond_3

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_3
    if-eqz p4, :cond_4

    .line 50
    .line 51
    invoke-interface {p6, p4}, Lcom/facebook/FacebookCallback;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/FacebookException;)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_4
    if-eqz p1, :cond_6

    .line 56
    .line 57
    if-eqz p2, :cond_6

    .line 58
    .line 59
    const/4 p1, 0x1

    .line 60
    invoke-virtual {p0, p1}, Lcom/facebook/login/LoginManager;->Kkkkkkkkkkkkkkkkkkkkkkk(Z)V

    .line 61
    .line 62
    .line 63
    invoke-interface {p6, p2}, Lcom/facebook/FacebookCallback;->onSuccess(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_5
    :goto_1
    invoke-interface {p6}, Lcom/facebook/FacebookCallback;->onCancel()V

    .line 68
    .line 69
    .line 70
    :cond_6
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/login/LoginConfiguration;)Lcom/facebook/login/LoginClient$Request;
    .locals 14
    .param p1    # Lcom/facebook/login/LoginConfiguration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/facebook/login/CodeChallengeMethod;->S256:Lcom/facebook/login/CodeChallengeMethod;

    .line 2
    .line 3
    :try_start_0
    sget-object v1, Lcom/facebook/login/PKCEUtil;->INSTANCE:Lcom/facebook/login/PKCEUtil;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/facebook/login/LoginConfiguration;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1, v0}, Lcom/facebook/login/PKCEUtil;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Lcom/facebook/login/CodeChallengeMethod;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1
    :try_end_0
    .catch Lcom/facebook/FacebookException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    :goto_0
    move-object v13, v0

    .line 14
    move-object v12, v1

    .line 15
    goto :goto_1

    .line 16
    :catch_0
    sget-object v0, Lcom/facebook/login/CodeChallengeMethod;->PLAIN:Lcom/facebook/login/CodeChallengeMethod;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/facebook/login/LoginConfiguration;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    goto :goto_0

    .line 23
    :goto_1
    new-instance v2, Lcom/facebook/login/LoginClient$Request;

    .line 24
    .line 25
    iget-object v3, p0, Lcom/facebook/login/LoginManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/login/LoginBehavior;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/facebook/login/LoginConfiguration;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/Set;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    iget-object v5, p0, Lcom/facebook/login/LoginManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/login/DefaultAudience;

    .line 36
    .line 37
    iget-object v6, p0, Lcom/facebook/login/LoginManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {}, Lcom/facebook/FacebookSdk;->Wwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v8

    .line 51
    iget-object v9, p0, Lcom/facebook/login/LoginManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/login/LoginTargetApp;

    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/facebook/login/LoginConfiguration;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v10

    .line 57
    invoke-virtual {p1}, Lcom/facebook/login/LoginConfiguration;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v11

    .line 61
    invoke-direct/range {v2 .. v13}, Lcom/facebook/login/LoginClient$Request;-><init>(Lcom/facebook/login/LoginBehavior;Ljava/util/Set;Lcom/facebook/login/DefaultAudience;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/login/LoginTargetApp;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/login/CodeChallengeMethod;)V

    .line 62
    .line 63
    .line 64
    sget-object p1, Lcom/facebook/AccessToken;->Companion:Lcom/facebook/AccessToken$Companion;

    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/facebook/AccessToken$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    invoke-virtual {v2, p1}, Lcom/facebook/login/LoginClient$Request;->Wwwwwwwwwww(Z)V

    .line 71
    .line 72
    .line 73
    iget-object p1, p0, Lcom/facebook/login/LoginManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {v2, p1}, Lcom/facebook/login/LoginClient$Request;->Wwwwwwwwwwwww(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget-boolean p1, p0, Lcom/facebook/login/LoginManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 79
    .line 80
    invoke-virtual {v2, p1}, Lcom/facebook/login/LoginClient$Request;->Wwwwwwwwww(Z)V

    .line 81
    .line 82
    .line 83
    iget-boolean p1, p0, Lcom/facebook/login/LoginManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 84
    .line 85
    invoke-virtual {v2, p1}, Lcom/facebook/login/LoginClient$Request;->Wwwwwwwwwwwwww(Z)V

    .line 86
    .line 87
    .line 88
    iget-boolean p1, p0, Lcom/facebook/login/LoginManager;->Wwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 89
    .line 90
    invoke-virtual {v2, p1}, Lcom/facebook/login/LoginClient$Request;->Wwwwwwwww(Z)V

    .line 91
    .line 92
    .line 93
    return-object v2
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/CallbackManager;Ljava/lang/String;)Lcom/facebook/login/LoginManager$FacebookLoginActivityResultContract;
    .locals 1
    .param p1    # Lcom/facebook/CallbackManager;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/login/LoginManager$FacebookLoginActivityResultContract;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/login/LoginManager$FacebookLoginActivityResultContract;-><init>(Lcom/facebook/login/LoginManager;Lcom/facebook/CallbackManager;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
