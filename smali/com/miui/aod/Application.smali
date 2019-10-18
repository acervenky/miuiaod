.class public Lcom/miui/aod/Application;
.super Lmiui/external/Application;
.source "Application.java"


# static fields
.field public static sInstance:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiui/external/Application;-><init>()V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 2

    const-string v0, "AOD.application"

    const-string v1, "application attached"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lmiui/external/Application;->attachBaseContext(Landroid/content/Context;)V

    sput-object p1, Lcom/miui/aod/Application;->sInstance:Landroid/content/Context;

    return-void
.end method

.method public onCreateApplicationDelegate()Lmiui/external/ApplicationDelegate;
    .locals 0

    new-instance p0, Lcom/miui/aod/AODApplication;

    invoke-direct {p0}, Lcom/miui/aod/AODApplication;-><init>()V

    return-object p0
.end method
