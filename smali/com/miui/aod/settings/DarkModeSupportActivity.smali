.class public abstract Lcom/miui/aod/settings/DarkModeSupportActivity;
.super Landroid/app/Activity;
.source "DarkModeSupportActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private static getDayNightThemeRes(Landroid/content/Context;)I
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "Theme.DayNight"

    const-string v1, "style"

    const-string v2, "miui"

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static setDayNightThemeIfNeed(Landroid/app/Activity;)V
    .locals 1

    invoke-static {p0}, Lcom/miui/aod/settings/DarkModeSupportActivity;->getDayNightThemeRes(Landroid/content/Context;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/aod/settings/DarkModeSupportActivity;->setDayNightThemeIfNeed(Landroid/app/Activity;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method
