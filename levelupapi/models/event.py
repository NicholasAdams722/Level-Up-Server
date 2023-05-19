from django.db import models


class Event(models.Model):

    description = models.CharField(max_length=50)
    date = models.DateField(null=True, blank=True, auto_now=False, auto_now_add=False)
    time = models.TimeField(null=True, blank=True)
    organizer = models.ForeignKey("Gamer", on_delete=models.CASCADE, related_name="organized_events")
    game = models.ForeignKey("Game", on_delete=models.CASCADE)
    attendees = models.ManyToManyField("Gamer")