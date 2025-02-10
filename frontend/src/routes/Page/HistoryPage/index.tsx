import { useEffect, useState } from 'react';
import LocationCard from '../../../components/LocationCard';
import './styles.css';
import { LocationDTO } from '../../../models/location';
import * as locationService from '../../../services/location-service';

export default function HistoryPage() {

    const [locations, setLocations] = useState<LocationDTO[]>([]);

    useEffect(() => {
        locationService.findAll().then(response => {
            setLocations(response.data.content)
        })
    }, [])

    return (
        <section id="history-page-section" className="container">
            <div className="history-page-top top-title">
                <h1>Histórico de locações</h1>
            </div>
            <div className="history-page-location-cards">
                {
                    locations.map(location => (<LocationCard key={location.id} location={location} />))
                }
            </div>
        </section>
    );
}